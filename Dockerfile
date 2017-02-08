FROM google/cloud-sdk

RUN apt-get update && apt-get install -y git jq

COPY cleanup-pods /usr/bin/cleanup-pods
RUN chmod +x /usr/bin/cleanup-pods
