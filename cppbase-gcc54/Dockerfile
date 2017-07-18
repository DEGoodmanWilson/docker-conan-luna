FROM ubuntu:xenial

MAINTAINER D.E. Goodman-Wilson

RUN dpkg --add-architecture i386 && rm -rf /var/lib/apt/lists/* && apt-get update && apt-get install -y python-dev sudo build-essential libc++-dev wget git vim libc6-dev-i386 libgmp-dev libmpfr-dev libmpc-dev libc6-dev dh-autoreconf libcurl4-gnutls-dev curl libmicrohttpd-dev libssl-dev libsasl2-dev cmake

RUN wget https://bootstrap.pypa.io/get-pip.py --no-check-certificate && python get-pip.py && pip install -U pip
RUN pip install conan
RUN export LD_LIBRARY_PATH="/usr/local/lib"
RUN sudo ldconfig

RUN conan config set settings_defaults.compiler.libcxx=libstdc++11
