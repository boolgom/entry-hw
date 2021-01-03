#!/usr/bin/env bash

#git config --global user.name "Entry Dev";
#git config --global user.email "entrydev@nts-corp.com";

#echo 'Clone BuildBase..'
#git clone -b build-base "https://github.com/entrylabs/entry-hw" build-base;

echo 'Clean BuildBase..'
rm -rf build-base/**/*;

echo 'Copy from projects..'
rsync -rR app/drivers build-base;
rsync -rR app/firmwares build-base;
rsync -rR app/modules build-base;
rsync -rR app/server build-base;
rsync -rR app/src/main/mainRouter.build.js build-base;
rsync -rR app/src/main/nativeNodeRequire.js build-base;
rsync -rR app/src/preload/lang build-base;
rsync -rR app/src/preload/preload.bundle.js build-base;
rsync -rR app/src/renderer/modal build-base;
rsync -rR app/src/renderer/react/dist build-base;
rsync -rR app/src/views build-base;
rsync -rR app/OPENSOURCE.md build-base;
rsync -rR config build-base;
rsync -rR LICENSE build-base;
rsync -rR package.json build-base;
