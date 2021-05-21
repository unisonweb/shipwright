#!/bin/sh

set -ex

rm -fr /tmp/codebase

mkdir /tmp/codebase
git init /tmp/codebase

/usr/local/bin/ucm transcript /usr/local/share/share.transcript.md
/usr/local/bin/ucm transcript --old-codebase /usr/local/share/share.transcript.old.md
CODEBASE=$(/usr/local/bin/ucm transcript /usr/local/share/pull.md | awk '/You can run/{sub(".*-codebase ", "", $0); sub("`.*", "", $0) ; print}')

mv $CODEBASE/.unison /root/.unison
