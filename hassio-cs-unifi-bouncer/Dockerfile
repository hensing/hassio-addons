ARG BUILD_FROM

# Stage 1: Extract the binary from the official ko-built image
FROM ghcr.io/teifun2/cs-unifi-bouncer:latest AS bouncer

# Stage 2: Build the final add-on image
FROM ${BUILD_FROM}

# Copy the bouncer binary from the first stage
COPY --from=bouncer /ko-app/cs-unifi-bouncer /usr/local/bin/cs-unifi-bouncer

# Copy our run script and make it executable
COPY run.sh /run.sh
RUN chmod a+x /run.sh

# Set the command to our run script
CMD [ "/run.sh" ]
