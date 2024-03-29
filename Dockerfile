FROM google/cloud-sdk:450.0.0-alpine
RUN apk add --no-cache curl \
    bash \
    python3 \
    py-pip \
    py-cffi \
    postgresql15-client
ADD . /postgres-gcs-backup
WORKDIR /postgres-gcs-backup
RUN chmod +x /postgres-gcs-backup/backup.sh
# ENTRYPOINT ["/postgres-gcs-backup/backup.sh"]

