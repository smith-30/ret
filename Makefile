CMD=""

.PHONY: \
	runner-test \
	install \
	build \
	runner

runner-test:
	go test ./...

runner:
	realize start

build:
	go build -v -ldflags "-X main.gittag=`git rev-parse --short HEAD`" -o build/${CMD} cmd/${CMD}

install:
	go install ./cmd/${CMD}
