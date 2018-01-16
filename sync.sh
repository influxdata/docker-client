#!/bin/bash

if [ -z "$GOPATH" ]; then
  echo 1>&2 "GOPATH is not set!"
  exit 1
fi

rsync -a "$GOPATH/src/github.com/docker/docker/client/" "$GOPATH/src/github.com/influxdata/docker-client/client"
rsync -a "$GOPATH/src/github.com/docker/docker/api/" "$GOPATH/src/github.com/influxdata/docker-client/api"
rsync -a "$GOPATH/src/github.com/docker/docker/pkg/" "$GOPATH/src/github.com/influxdata/docker-client/pkg"
