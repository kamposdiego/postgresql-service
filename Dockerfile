ARG CODE_VERSION=13

FROM postgres:${CODE_VERSION}

LABEL br.com.morsesystems.image.authors="Diego Campos kamposdiego@outlook.com"

ARG DUMP_FILE=senatus_web-schema-v1.0.20.sql

COPY ${DUMP_FILE} /docker-entrypoint-initdb.d/
