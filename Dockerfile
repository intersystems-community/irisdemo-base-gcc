FROM intersystemsdc/irisdemo-base-irisdb-community:iris-community.2019.3.0.309.0

FROM gcc:4.9

LABEL maintainer="Amir Samary <amir.samary@intersystems.com>"

WORKDIR ${ISC_PACKAGE_INSTALLDIR}/dev

COPY --from=0 ${ISC_PACKAGE_INSTALLDIR}/dev/iris-callin ${ISC_PACKAGE_INSTALLDIR}/dev/iris-callin