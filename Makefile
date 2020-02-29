
IMGNAME="diagprov/buildenv-clang-tidy"
VERSION=0.1

.PHONY: alpine

default: alpine

alpine: Dockerfile.alpine
	sudo docker build -t $(IMGNAME):$(VERSION) -t $(IMGNAME):latest -f $< .

push:
	sudo docker push $(IMGNAME)
