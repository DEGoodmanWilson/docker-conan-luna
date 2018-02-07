FROM degoodmanwilson/cppbase-gcc54

MAINTAINER D.E. Goodman-Wilson

RUN ls
RUN conan remote remove conan-transit
RUN conan remote add DEGoodmanWilson -i 0 https://api.bintray.com/conan/degoodmanwilson/opensource
RUN conan remote add bincrafters https://api.bintray.com/conan/bincrafters/public-conan
RUN conan remote add genvidtech https://api.bintray.com/conan/genvidtech/conan-oss

RUN conan install cpr/1.2.0@DEGoodmanWilson/stable --build
RUN conan install Catch/1.9.6@bincrafters/stable --build 
RUN conan install nl-json/[~=2.1]@genvidtech/1.4.0 --build
RUN conan install libmicrohttpd/0.9.51@DEGoodmanWilson/stable --build
RUN conan install libmagic/5.29@DEGoodmanWilson/testing --build
RUN conan install base64/1.0.2@DEGoodmanWilson/stable --build

RUN conan install luna/[~=4.0]@DEGoodmanWilson/stable --build
