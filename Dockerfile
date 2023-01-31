FROM alpine:3.17.0
RUN apk add --no-cache curl \
    bash \
    python3 \
    py-pip \
    py-cffi \
    postgresql14-client && \
    pip install --upgrade pip && \
    pip install gsutil
ADD . /postgres-gcs-backup
WORKDIR /postgres-gcs-backup
RUN chmod +x /postgres-gcs-backup/backup.sh
# ENTRYPOINT ["/postgres-gcs-backup/backup.sh"]

