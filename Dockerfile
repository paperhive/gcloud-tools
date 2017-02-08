FROM google/cloud-sdk

RUN apt-get update && apt-get install -y git jq
RUN ssh-keyscan github.com > ~/.ssh/known_hosts

COPY cleanup-pods /usr/bin/cleanup-pods
COPY cleanup-branches /usr/bin/cleanup-branches
RUN chmod +x /usr/bin/cleanup-pods
RUN chmod +x /usr/bin/cleanup-branches
