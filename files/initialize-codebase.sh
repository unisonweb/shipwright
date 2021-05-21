#!/bin/sh

set -ex
/usr/local/bin/ucm --old-codebase init

echo "pull https://github.com/asoltysik/unison-md5:.releases._latest .contrib.asoltysik.md5" | /usr/local/bin/ucm  --old-codebase 
echo "pull https://github.com/atacratic/unison-random-mersenne.git:.releases._v1 .contrib.atacratic.random_mersenne.v1" | /usr/local/bin/ucm  --old-codebase
echo "pull https://github.com/bascott/unison-continuations:.releases._v1 .contrib.bascott.continuations.v1" | /usr/local/bin/ucm  --old-codebase
echo "pull https://github.com/ceedubs/unison-foldl:.trunk .contrib.ceedubs.foldl" | /usr/local/bin/ucm  --old-codebase
echo "pull https://github.com/emiflake/unison-json:.releases._v0 .contrib.emiflake.json.v0" | /usr/local/bin/ucm  --old-codebase
echo "pull https://github.com/fboeller/unison-expect:.trunk .contrib.fboeller.expect.v0" | /usr/local/bin/ucm  --old-codebase
echo "pull https://github.com/hojberg/unison-money:.releases._latest .contrib.hoyberg.money.v0" | /usr/local/bin/ucm  --old-codebase
echo "pull https://github.com/thoradam/unison-read:.releases._v0 contrib.thoradam.read.v0" | /usr/local/bin/ucm  --old-codebase

/usr/local/bin/ucm  upgrade-codebase
echo "pull https://github.com/unisonweb/base_v2:trunk .base" | /usr/local/bin/ucm
