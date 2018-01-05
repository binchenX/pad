#
# Dockerfile for the build/flash system for Poplar Andriod
#

FROM ubuntu:14.04

MAINTAINER Bin Chen <bin.chen@linaro.org>

RUN apt-get update && apt-get install -y \
  python python-pip wget \
  android-tools-fsutils

RUN mkdir -p /poplar
COPY tools/mkimage /usr/bin
VOLUME ["/poplar/flash_input", "/poplar/flash_output"]
WORKDIR /poplar
RUN wget -nv -O uflash.py https://raw.githubusercontent.com/pierrchen/pat/master/uflash.py
