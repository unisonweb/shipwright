#!/bin/sh

set -ex

rm -fr /tmp/codebase
mkdir /tmp/codebase
git init --bare /tmp/codebase

rm -rf ${HOME}/.cache
CODEBASE=$(/usr/local/bin/ucm transcript -save-codebase /usr/local/share/share.transcript.md  | awk '/You can run/{sub(".*-codebase ", "", $0); sub("`.*", "", $0) ; print}')

rm -rf ${HOME}/.unison ${HOME}/.cache
mv $CODEBASE/.unison ${HOME}/.unison

echo "push /tmp/codebase" | /usr/local/bin/ucm
rm -rf ${HOME}/.cache

CODEBASE=$(/usr/local/bin/ucm transcript.fork -save-codebase --old-codebase /usr/local/share/share.transcript.old.md  | awk '/You can run/{sub(".*-codebase ", "", $0); sub("`.*", "", $0) ; print}')

echo "push /tmp/codebase" | /usr/local/bin/ucm
rm -rf ${HOME}/.cache

/usr/local/bin/ucm init

echo "pull /tmp/codebase ." | /usr/local/bin/ucm
