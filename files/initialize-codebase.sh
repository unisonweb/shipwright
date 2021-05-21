#!/bin/sh

set -ex

rm -fr $HOME/.cache /tmp/codebase

mkdir /tmp/codebase
git init --bare /tmp/codebase
chmod -R 777 /tmp/codebase

/usr/local/bin/ucm transcript /usr/local/share/share.transcript.md
/usr/local/bin/ucm transcript --old-codebase /usr/local/share/share.transcript.old.md
CODEBASE=$(/usr/local/bin/ucm transcript /usr/local/share/pull.md | awk '/You can run/{sub(".*-codebase ", "", $0); sub("`.*", "", $0) ; print}')

mv $CODEBASE/.unison /root/.unison
