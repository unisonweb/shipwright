#!/bin/sh

set -ex

rm -fr /tmp/codebase
mkdir /tmp/codebase
git init --bare /tmp/codebase

rm -rf $(HOME)/.cache/unisonlanguage
CODEBASE=$(/usr/local/bin/ucm transcript -save-codebase /usr/local/share/share.transcript.md  | awk '/You can run/{sub(".*-codebase ", "", $0); sub("`.*", "", $0) ; print}')
rm -rf $(HOME)/.cache/unisonlanguage
CODEBASE=$(/usr/local/bin/ucm transcript.fork -save-codebase /usr/local/share/push.md  | awk '/You can run/{sub(".*-codebase ", "", $0); sub("`.*", "", $0) ; print}')
rm -rf $(HOME)/.cache/unisonlanguage
CODEBASE=$(/usr/local/bin/ucm transcript.fork -save-codebase -codebase $CODEBASE --old-codebase /usr/local/share/share.transcript.old.md  | awk '/You can run/{sub(".*-codebase ", "", $0); sub("`.*", "", $0) ; print}')
rm -rf $(HOME)/.cache/unisonlanguage
CODEBASE=$(/usr/local/bin/ucm transcript.fork -save-codebase /usr/local/share/push.md  | awk '/You can run/{sub(".*-codebase ", "", $0); sub("`.*", "", $0) ; print}')
rm -rf $(HOME)/.cache/unisonlanguage
CODEBASE=$(/usr/local/bin/ucm transcript.fork -save-codebase -codebase $CODEBASE /usr/local/share/pull.md | awk '/You can run/{sub(".*-codebase ", "", $0); sub("`.*", "", $0) ; print}')

mv $CODEBASE/.unison /root/.unison
