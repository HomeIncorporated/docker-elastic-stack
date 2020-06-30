REPO=blacktop
NAME=elastic-stack
BUILD ?=$(shell cat LATEST)
LATEST ?=$(shell cat LATEST)

all: build

build:
	cd $(BUILD); docker build -t $(REPO)/$(NAME):$(BUILD) .