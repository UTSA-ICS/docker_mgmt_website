FROM ubuntu:18.04
MAINTAINER James Benson <james.benson@utsa.edu>

ENV DEBIAN_FRONTEND=noninteractive
ENV USER root

# build depends
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        ipmitool nodejs git && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


WORKDIR /
ADD start_website.sh /start_website.sh
RUN chmod 755 /start_website.sh
CMD [ "/start_website.sh" ]
EXPOSE 8080 8443
