FROM degoodmanwilson/cppbase-gcc54

MAINTAINER D.E. Goodman-Wilson

RUN conan remote add DEGoodmanWilson https://api.bintray.com/conan/degoodmanwilson/opensource
RUN conan install --build=missing -s compiler=gcc -s compiler.version=5.4 -s compiler.libcxx=libstdc++11 luna/3.0.0@DEGoodmanWilson/stable -o build_luna_tests=True
