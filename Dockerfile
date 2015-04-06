FROM alpine
MAINTAINER Scott Arthur <scott@decent.io>

RUN apk -U add ca-certificates
RUN wget -O /tmp/terraform.zip http://dl.bintray.com/mitchellh/terraform/terraform_0.4.0_linux_amd64.zip && \
    unzip /tmp/terraform.zip -d /usr/local/bin && \
    rm /tmp/terraform.zip
RUN mkdir /src
WORKDIR /src
COPY lib/ejson /usr/local/bin/ejson
COPY lib/exec /exec
ENTRYPOINT ["/exec"]
