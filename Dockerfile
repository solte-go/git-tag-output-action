FROM alpine:3.17.3
LABEL "repository"="https://github.com/solte-go/tag_to_output"
LABEL "homepage"="https://github.com/solte-go/tag_to_output"
LABEL "maintainer"="Andrei Belov"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
