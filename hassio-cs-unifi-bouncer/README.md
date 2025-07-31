# Home Assistant Add-on: CrowdSec UniFi Bouncer

<p align="center">
<img src="https://raw.githubusercontent.com/hensing/hassio-addons/main/HA-Addons.jpg" alt="CrowdSec UniFi Bouncer" title="CrowdSec UniFi Bouncer" width="300" height="280" />
</p>

## About this Add-on

This is a **Home Assistant Add-on** that packages the [CrowdSec UniFi Bouncer](https://github.com/teifun2/cs-unifi-bouncer) for easy deployment within your Home Assistant environment.

It allows you to protect your network by using CrowdSec's collaborative security to block malicious IP addresses directly on your UniFi appliance.

**Author of this Add-on:** [Henning Dickten (hensing)](https://github.com/hensing)

This add-on is based on the excellent work of the original creator, [teifun2](https://github.com/teifun2).

## Installation

### Prerequisites

- You must have the official **CrowdSec Add-on** installed and running.

### Steps

0.  Make sure you have a working CrowdSec instance (e.g. the [CrowdSec Add-On](https://github.com/crowdsecurity/home-assistant-addons.git))
1.  Add this repository to your Home Assistant instance as a custom add-on repository.
2.  Install the "CrowdSec UniFi Bouncer" add-on.
3.  **Generate an API Key:**
    - Open the terminal of your CrowdSec add-on.
    - Run the following command: `cscli bouncers add unifi-fw-bouncer`
    - Copy the generated API key. You will not be able to see it again!
4.  **Configure the Add-on:**
    - Go to the configuration page of the "CrowdSec UniFi Bouncer" add-on.
    - Paste the API key into the `CROWDSEC_BOUNCER_API_KEY` field.
    - Fill in your UniFi controller details.
5.  Start the add-on and check the logs to ensure it connects correctly.

## Configuration

The add-on is configured via the Home Assistant UI. Here are the available options:
 

| Name                          | Description                                                                        | Required |
| ----------------------------- | ---------------------------------------------------------------------------------- | :------: |
| `CROWDSEC_BOUNCER_API_KEY`    | Your bouncer API key from CrowdSec.                                                |    ✅    |
| `CROWDSEC_URL`                | The URL of your CrowdSec LAPI. The default should work with the official Add-on.   |    ❌    |
| `UNIFI_HOST`                  | The full URL of your UniFi controller, including `http(s)://` and port. E.g., `https://192.168.1.1:443` |    ✅    |
| `UNIFI_USER`                  | The username for your UniFi controller.                                            |    ✅    |
| `UNIFI_PASS`                  | The password for your UniFi controller.                                            |    ✅    |
| `UNIFI_SKIP_TLS_VERIFY`       | Enable if your UniFi controller uses a self-signed certificate (standard for many local setups). |    ❌    |
| `LOG_LEVEL`                   | The logging level for the bouncer.                                                 |    ❌    |
| `UNIFI_IPV6`                  | Enable or disable IPv6 support.                                                    |    ❌    |
| `UNIFI_SITE`                  | The UniFi site to apply the rules to.                                              |    ❌    |
| `UNIFI_MAX_GROUP_SIZE`        | The maximum number of IPs in a single firewall group.                              |    ❌    |
| `UNIFI_IPV4_START_RULE_INDEX` | The starting index for IPv4 firewall rules to avoid conflicts.                     |    ❌    |
| `UNIFI_IPV6_START_RULE_INDEX` | The starting index for IPv6 firewall rules to avoid conflicts.                     |    ❌    |
| `UNIFI_LOGGING`               | Generate syslog entries when firewall rules are matched.                           |    ❌    |
| `CROWDSEC_UPDATE_INTERVAL`    | How often the bouncer should check for new decisions from CrowdSec.                |    ❌    |
| `CROWDSEC_ORIGINS`            | A space-separated list of CrowdSec origins to filter from the LAPI.                |    ❌    |
| `UNIFI_ZONE_SRC`              | Space-separated list of source zones for the firewall policy.                      |    ❌    |
| `UNIFI_ZONE_DST`              | Space-separated list of destination zones for the firewall policy.                 |    ❌    |
 

## NOTE
> For more detailed information about the bouncer's functionality, please refer to the [original repository](https://github.com/teifun2/cs-unifi-bouncer).
