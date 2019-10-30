FROM intersystemsdc/irisdemo-base-irisdb-community:iris-community.2019.3.0.309.0

FROM gcc:4.9

LABEL maintainer="Amir Samary <amir.samary@intersystems.com>"

WORKDIR /usr/irissys/dev

COPY --from=0 /usr/irissys/dev/iris-callin /usr/irissys/dev/iris-callin