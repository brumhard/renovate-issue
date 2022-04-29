module some-module

go 1.16

require (
	github.com/pkg/errors v0.9.1
	go.uber.org/automaxprocs v1.5.1
	go.uber.org/zap v1.21.0
	gopkg.in/yaml.v2 v2.4.0 // indirect
)

replace (
	go.uber.org/automaxprocs => go.uber.org/automaxprocs v1.4.0
	// TODO: this comment breaks renovatebot (>v0.11.1)
	go.uber.org/zap => go.uber.org/zap v1.21.0
)
