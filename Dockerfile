FROM circleci/android:api-26-alpha

ENV CMAKE_VERSION 3.9.4

RUN sudo dpkg --add-architecture i386 \
 && sudo apt-get update -qq \
 && sudo wget -q https://cmake.org/files/v3.9/cmake-${CMAKE_VERSION}-Linux-x86_64.sh \
 && sudo chmod a+x cmake-${CMAKE_VERSION}-Linux-x86_64.sh \
 && sudo ./cmake-${CMAKE_VERSION}-Linux-x86_64.sh --skip-license --prefix=/usr/local \
 && export PATH=/usr/local/bin:${PATH} \
 && sudo apt-get install -qq -y --no-install-recommends yasm \
 && sudo apt-get install -qq -y --no-install-recommends nasm \
 && sudo apt-get install -qq -y --no-install-recommends ant \
 && sudo apt-get install -qq -y --no-install-recommends python \
 && sudo apt-get install -qq -y --no-install-recommends intltool \
 && sudo apt-get install -qq -y --no-install-recommends vim-common \
 && sudo apt-get install -qq -y --no-install-recommends libstdc++6:i386 libgcc1:i386 zlib1g:i386 libncurses5:i386
