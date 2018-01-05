#
# Dockerfile for the build/flash system for Poplar Andriod
#

FROM ubuntu:14.04

MAINTAINER Bin Chen <bin.chen@linaro.org>

RUN apt-get update
RUN apt-get install -y python python-pip wget
RUN apt-get install android-tools-fsutils

ADD . /poplar

VOLUME ["/poplar/flash_input", "/poplar/flash_output"]

WORKDIR /poplar
COPY tools/uflash.py .
COPY tools/mkimage /usr/bin
