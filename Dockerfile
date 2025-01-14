FROM alpine:latest

LABEL version="1.0.0"
LABEL repository="https://github.com/jimyang-9/rebase"
LABEL homepage="https://github.com/jimyang-9/rebase"
LABEL maintainer="Jim Yang"
LABEL "com.github.actions.name"="Automatic Merge Conflict Resolution"
LABEL "com.github.actions.description"="Automatically resolves merge conflicts when deploying from master to prod"
LABEL "com.github.actions.icon"="git-pull-request"
LABEL "com.github.actions.color"="purple"

RUN apk --no-cache add jq bash curl git

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]