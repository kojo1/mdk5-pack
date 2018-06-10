#!/bin/sh

# ../mdk5pack-pdsc.test
# ../PDSC-Repo: pdsc, license claime files git
# ../wolfssl-git: wolfssl lib
# ../Pack-Check${VERSION}: marging files, make pack and check

VERSION=3.15.0
PACK_CHECK=Pack-Check${VERSION}

cd ..
mkdir ./${PACK_CHECK}
mkdir ./${PACK_CHECK}/wolfssl
cp -r -f ./PDSC-Repo/wolfssl ./${PACK_CHECK}  # copy everything w/o .git
cp    ./PDSC-Repo/wolfSSL.wolfSSL.pdsc ./${PACK_CHECK}
cp -r -f ./wolfssl-git/* ./${PACK_CHECK}/wolfssl
cp ./PackChk.exe ./${PACK_CHECK}
cd ./${PACK_CHECK} 
./PackChk.exe wolfSSL.wolfSSL.pdsc

# zip wolfSSL.wolfSSL.${VERSION}.zip wolfssl wolfSSL.wolfSSL.pdsc
# mv wolfSSL.wolfSSL.zip wolfSSL.wolfSSL.${VERSION}.pack

