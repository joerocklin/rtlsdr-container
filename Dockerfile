FROM debian:11-slim

RUN apt-get -y update \
  && apt-get install -y --no-install-recommends \
    rtl-sdr \
  && rm -rf /var/lib/apt/lists/*

