SHELL := /bin/bash

all : build

build:
	hugo 

upload : build
	@echo "Assuming ~/.ssh/config is righ value of ipitech"
	ssh ipitech rm -rf ~/public_html/web/*
	scp -r ./public/* ipitech:~/public_html/web/
