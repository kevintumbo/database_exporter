FROM debian:latest
RUN apk --no-cache add ca-certificates

WORKDIR     /exporter/

COPY        config/ ./config/
COPY        database_exporter .
COPY        database_exporter.yml .
COPY        LICENSE .
COPY        VERSION .

EXPOSE      9285

ENTRYPOINT  [ "/exporter/database_exporter", "-logtostderr=true" ]

