FROM lasote/conangcc72

MAINTAINER D.E. Goodman-Wilson

RUN conan remote add vthiery https://api.bintray.com/conan/vthiery/conan-packages
RUN conan remote add degoodmanwilson https://api.bintray.com/conan/degoodmanwilson/opensource
RUN conan remote add bincrafters https://api.bintray.com/conan/bincrafters/public-conan

RUN conan install luna/[~=5.0]@DEGoodmanWilson/stable