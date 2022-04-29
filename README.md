# renovate-issue

This repo contains a [minimum reproducable example](https://github.com/renovatebot/renovate/blob/main/docs/development/minimal-reproductions.md#how-to-create-a-good-minimal-reproduction) for a renovate bug where it fails in case there is a comment with a version in the go.sum file.

The following error occurs (taken from the created failed PR (https://github.com/brumhard/renovate-issue/pull/4)):

```shell
Command failed: go get -d -t ./...
go: errors parsing go.mod:
/tmp/renovate/repos/github/brumhard/renovate-issue/go.mod:15:2: unknown directive: go.uber.org/zap
/tmp/renovate/repos/github/brumhard/renovate-issue/go.mod:16: unknown directive: )
```