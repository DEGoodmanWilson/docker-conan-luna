FROM ubuntu:xenial

MAINTAINER D.E. Goodman-Wilson

RUN dpkg --add-architecture i386 && rm -rf /var/lib/apt/lists/* && apt-get update && apt-get install -y python-dev sudo clang libc++-dev wget git vim curl libc6-dev-i386 libgmp-dev libmpfr-dev libmpc-dev libc6-dev dh-autoreconf libcurl4-openssl-dev libmicrohttpd-dev libssl-dev libsasl2-dev cmake
RUN apt-get -y remove gcc && apt-get -y autoremove

RUN sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.8 100
RUN sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-3.8 100

RUN wget https://bootstrap.pypa.io/get-pip.py --no-check-certificate && python get-pip.py && pip install -U pip
RUN pip install conan
RUN export LD_LIBRARY_PATH="/usr/local/lib"
RUN sudo ldconfig

RUN conan
