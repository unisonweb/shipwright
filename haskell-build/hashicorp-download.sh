#!/bin/sh

set -e

flavor=linux
arch=amd64

zip_url() {
  product=$1 ; shift
  version=$1 ; shift

  echo "https://releases.hashicorp.com/${product}/${version}/${product}_${version}_${flavor}_${arch}.zip"
}

fetch() {
  product=$1 ; shift
  version=$1 ; shift
  output=$1 ; shift

  curl "$(zip_url "$product" "$version")" > "$output"
}

install() {
  product=$1 ; shift
  version=$1 ; shift

  zipfile=/tmp/$product.zip

  fetch "$product" "$version" "$zipfile"
  unzip -d /usr/local/bin "$zipfile" 
  rm "$zipfile"
  chmod 755 "/usr/local/bin/$product"
}

usage() {
  cat <<EOF
Usage: $0 <product> <version>
Example: $0 consul 1.6.1  
EOF

exit 1
}

fail() {
  what=$1; shift

  echo "missing required dependency: $what"

  exit 2
}

preflight() {
    [ $# -eq 2 ] || usage
    env which unzip || fail unzip
    env which curl || fail curl
}

preflight "$@" && install "$1" "$2"
