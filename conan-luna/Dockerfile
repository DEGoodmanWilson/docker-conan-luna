FROM lasote/conangcc7

MAINTAINER D.E. Goodman-Wilson

RUN conan remote add vthiery https://api.bintray.com/conan/vthiery/conan-packages
RUN conan remote add degoodmanwilson https://api.bintray.com/conan/degoodmanwilson/opensource
RUN conan remote add bincrafters https://api.bintray.com/conan/bincrafters/public-conan

RUN conan profile new default --detect
RUN conan profile update settings.compiler.libcxx=libstdc++11 default
RUN conan install luna/[~=5.0]@DEGoodmanWilson/stable
