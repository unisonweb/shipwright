#!/bin/sh

#
# This is the file that initializes the codebase which will be presented by
# https://share.unison-lang.org ; If you have a repository with unison code
# you would like to have included on share.unison-lang.org, please feel free
# to propose updates to this file using this link:
# https://github.com/unisonweb/shipwright/edit/trunk/files/initialize-codebase.sh
#


set -ex
/usr/local/bin/ucm --old-codebase init

#
# First, v1 codebases. Put your codebase here if you haven't yet
# migraded to our v2 codebase format.
#


echo "pull https://github.com/asoltysik/unison-md5:.releases._latest .contrib.asoltysik.md5" | /usr/local/bin/ucm  --old-codebase 
echo "pull https://github.com/atacratic/unison-random-mersenne.git:.releases._v1 .contrib.atacratic.random_mersenne.v1" | /usr/local/bin/ucm  --old-codebase
echo "pull https://github.com/bascott/unison-continuations:.releases._v1 .contrib.bascott.continuations.v1" | /usr/local/bin/ucm  --old-codebase
echo "pull https://github.com/ceedubs/unison-foldl:.trunk .contrib.ceedubs.foldl" | /usr/local/bin/ucm  --old-codebase
echo "pull https://github.com/emiflake/unison-json:.releases._v0 .contrib.emiflake.json.v0" | /usr/local/bin/ucm  --old-codebase
echo "pull https://github.com/fboeller/unison-expect:.trunk .contrib.fboeller.expect.v0" | /usr/local/bin/ucm  --old-codebase
echo "pull https://github.com/hojberg/unison-money:.releases._latest .contrib.hojberg.money.v0" | /usr/local/bin/ucm  --old-codebase
echo "pull https://github.com/thoradam/unison-read:.releases._v0 contrib.thoradam.read.v0" | /usr/local/bin/ucm  --old-codebase

/usr/local/bin/ucm  upgrade-codebase

#
# Next, v2 codebases. Put your codebase here if you have already moved to the new v2 codebase format
#
echo "pull https://github.com/unisonweb/base_v2:.trunk .base" | /usr/local/bin/ucm
