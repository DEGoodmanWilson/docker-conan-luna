FROM lasote/conangcc7

MAINTAINER D.E. Goodman-Wilson

RUN conan remote add vthiery https://api.bintray.com/conan/vthiery/conan-packages && \
conan remote add degoodmanwilson https://api.bintray.com/conan/degoodmanwilson/opensource && \
conan remote add bincrafters https://api.bintray.com/conan/bincrafters/public-conan && \
conan profile new default --detect && \
conan profile update settings.compiler.libcxx=libstdc++11 default && \
conan install luna/[~=5.0]@DEGoodmanWilson/stable
