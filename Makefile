build:
	docker build --pull -t node:latest .
	docker tag node:latest royge/node:latest

push:
	docker push royge/node:latest

prepare:
	curl -LO https://storage.googleapis.com/container-structure-test/latest/container-structure-test-linux-amd64 && chmod +x container-structure-test-linux-amd64 && sudo mv container-structure-test-linux-amd64 /usr/local/bin/container-structure-test

test:
	container-structure-test test \
		--image node:latest \
		--config test-config.yaml
