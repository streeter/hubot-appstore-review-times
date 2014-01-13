NPM=npm

BASEDIR=$(PWD)

all: publish

help:
	@echo 'Makefile for hubot-appstore-review-times                               '
	@echo '                                                                       '
	@echo 'Usage:                                                                 '
	@echo '   make publish                     publish the package to NPM         '
	@echo '                                                                       '

publish:
	$(NPM) publish

.PHONY:
	publish
