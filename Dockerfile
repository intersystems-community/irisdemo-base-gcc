FROM intersystemsdc/irisdemo-base-irisdb-community:iris-community.2019.3.0.309.0

FROM gcc:8
LABEL maintainer="Amir Samary <amir.samary@intersystems.com>"

RUN wget https://github.com/Kitware/CMake/releases/download/v3.15.5/cmake-3.15.5-Linux-x86_64.sh \
      -q -O /tmp/cmake-install.sh \
      && chmod u+x /tmp/cmake-install.sh \
      && mkdir /usr/bin/cmake \
      && /tmp/cmake-install.sh --skip-license --prefix=/usr/bin/cmake \
      && rm /tmp/cmake-install.sh

ENV PATH="/usr/bin/cmake/bin:${PATH}"

WORKDIR /usr/irissys/dev

COPY --from=0 /usr/irissys/dev/iris-callin /usr/irissys/dev/iris-callin