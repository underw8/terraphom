ARG VERSION=0.13.7

FROM hashicorp/terraform:${VERSION}

RUN apk add --update --no-cache bash aws-cli