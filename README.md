# Docker Client

This repository is a fork of the official docker client within [moby/moby](https://github.com/moby/moby).

This fork exists because some aspects of the docker client library do not work because of vendored dependencies. If you use the docker client directly from the repository, you will get errors like these:

```
# command-line-arguments
./main.go:21:16: cannot use "github.com/docker/go-connections/nat".PortMap literal (type "github.com/docker/go-connections/nat".PortMap) as type "github.com/docker/docker/vendor/github.com/docker/go-connections/nat".PortMap in field value
```

This issue has not been addressed for a [long time](https://github.com/moby/moby/issues/29362) and appears like it will not be addressed in the near future.

This fork includes a sanitized copy of the client sections of the repository. This includes the following directories:

```
github.com/docker/docker/client
github.com/docker/docker/api
github.com/docker/docker/pkg
```

The vendor directories are removed.
