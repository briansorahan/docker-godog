IMG    ?= bsorahan/godog

push: image
	@docker push $(IMG)

image: .image
.image: Dockerfile
	@docker build -t $(IMG) .
	@touch $@

.PHONY: image push
