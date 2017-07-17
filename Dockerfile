FROM degoodmanwilson/cppbase-gcc54

MAINTAINER D.E. Goodman-Wilson

RUN ls -al
RUN conan remote remove conan-center
RUN conan remote remove conan-transit
RUN conan remote add DEGoodmanWilson https://api.bintray.com/conan/degoodmanwilson/opensource
RUN conan remote add conan-center https://conan.bintray.com
RUN conan remote add conan-transit https://conan-transit.bintray.com

RUN conan install luna/3.0.0@DEGoodmanWilson/stable --build
RUN conan install cpr/1.2.0@DEGoodmanWilson/stable --build
RUN conan install Catch/1.9.3@uilianries/stable --build 
RUN conan install nl-json/2.1.1@genvidtech/1.4.0 --build
