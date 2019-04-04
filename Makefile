ROOT_PATH:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

.PHONE:clean build-mail release
all:build-mail release
	
archive: 
	rm -fr release; mkdir -p release;
	cd bin/windows; tar czf ../../release/windows.tar.gz *
	cd bin/darwin;  tar czf ../../release/darwin.tar.gz *
	cd bin/linux;   tar czf ../../release/linux.tar.gz *

release:archive
	hub release delete 0
	hub release create `find release -type f -printf ' -a %p '` -m release 0

clean: 
	rm  -fr bin release

download:
	${ROOT_PATH}/download.sh


### sub project
mail:
	git clone git@github.com:JackGeass/mail.git;
build-mail:mail
	cd mail; make; cp -r bin ..

