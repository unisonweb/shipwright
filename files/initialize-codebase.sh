#!/bin/sh

set -ex

rm -fr /tmp/codebase
mkdir /tmp/codebase
git init --bare /tmp/codebase
rm -rf ${HOME}/.unison ${HOME}/.cache

rm -rf /tmp/foo
mkdir /tmp/foo 
/usr/local/bin/ucm -codebase /tmp/foo --old-codebase init


echo "pull https://github.com/asoltysik/unison-md5:.releases._latest .contrib.asoltysik.md5" | /usr/local/bin/ucm -codebase /tmp/foo --old-codebase 
echo "pull https://github.com/atacratic/unison-random-mersenne.git:.releases._v1 .contrib.atacratic.random_mersenne.v1" | /usr/local/bin/ucm -codebase /tmp/foo --old-codebase
echo "pull https://github.com/bascott/unison-continuations:.releases._v1 .contrib.bascott.continuations.v1" | /usr/local/bin/ucm -codebase /tmp/foo --old-codebase
echo "pull https://github.com/ceedubs/unison-foldl:.trunk .contrib.ceedubs.foldl" | /usr/local/bin/ucm -codebase /tmp/foo --old-codebase
echo "pull https://github.com/emiflake/unison-json:.releases._v0 .contrib.emiflake.json.v0" | /usr/local/bin/ucm -codebase /tmp/foo --old-codebase
echo "pull https://github.com/fboeller/unison-expect:.trunk .contrib.fboeller.expect.v0" | /usr/local/bin/ucm -codebase /tmp/foo --old-codebase
echo "pull https://github.com/hojberg/unison-money:.releases._latest .contrib.hoyberg.money.v0" | /usr/local/bin/ucm -codebase /tmp/foo --old-codebase
echo "pull https://github.com/thoradam/unison-read:.releases._v0 contrib.thoradam.read.v0" | /usr/local/bin/ucm -codebase /tmp/foo --old-codebase

/usr/local/bin/ucm -codebase /tmp/foo upgrade-codebase

echo "push /tmp/codebase" | /usr/local/bin/ucm -codebase /tmp/foo 

rm -rf ${HOME}/.cache

/usr/local/bin/ucm init

echo "pull /tmp/codebase ." | /usr/local/bin/ucm
