#!/bin/bash
set -e

# Read configuration from options.json and export as environment variables
export CROWDSEC_BOUNCER_API_KEY=$(jq -r '.CROWDSEC_BOUNCER_API_KEY' /data/options.json)
export CROWDSEC_URL=$(jq -r '.CROWDSEC_URL' /data/options.json)
export UNIFI_HOST=$(jq -r '.UNIFI_HOST' /data/options.json)
export UNIFI_USER=$(jq -r '.UNIFI_USER' /data/options.json)
export UNIFI_PASS=$(jq -r '.UNIFI_PASS' /data/options.json)
export UNIFI_SKIP_TLS_VERIFY=$(jq -r '.UNIFI_SKIP_TLS_VERIFY' /data/options.json)
export LOG_LEVEL=$(jq -r '.LOG_LEVEL' /data/options.json)
export UNIFI_IPV6=$(jq -r '.UNIFI_IPV6' /data/options.json)
export UNIFI_SITE=$(jq -r '.UNIFI_SITE' /data/options.json)
export UNIFI_MAX_GROUP_SIZE=$(jq -r '.UNIFI_MAX_GROUP_SIZE' /data/options.json)
export UNIFI_IPV4_START_RULE_INDEX=$(jq -r '.UNIFI_IPV4_START_RULE_INDEX' /data/options.json)
export UNIFI_IPV6_START_RULE_INDEX=$(jq -r '.UNIFI_IPV6_START_RULE_INDEX' /data/options.json)
export UNIFI_LOGGING=$(jq -r '.UNIFI_LOGGING' /data/options.json)
export CROWDSEC_UPDATE_INTERVAL=$(jq -r '.CROWDSEC_UPDATE_INTERVAL' /data/options.json)
export CROWDSEC_ORIGINS=$(jq -r '.CROWDSEC_ORIGINS' /data/options.json)
export UNIFI_ZONE_SRC=$(jq -r '.UNIFI_ZONE_SRC' /data/options.json)
export UNIFI_ZONE_DST=$(jq -r '.UNIFI_ZONE_DST' /data/options.json)

# Start the bouncer
exec /usr/local/bin/cs-unifi-bouncer
