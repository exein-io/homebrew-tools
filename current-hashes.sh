#!/usr/bin/env bash

set -e

REPO="exein-io/homebrew-tools"
# The release the formula points at, so this never names an older one.
VERSION=$(sed -n 's/^[[:space:]]*version "\([^"]*\)".*/\1/p' "$(dirname "$0")/Formula/analyzer.rb")
RELEASE_TAG="analyzer-cli-v${VERSION:?cannot read the version of Formula/analyzer.rb}"
TMP_DIR="./tmp-dir"

rm -r "$TMP_DIR" || true
mkdir -p "$TMP_DIR"

cd "$TMP_DIR"

gh release download "$RELEASE_TAG"

for target in \
  analyzer-aarch64-apple-darwin \
  analyzer-x86_64-apple-darwin \
  analyzer-aarch64-unknown-linux-gnu \
  analyzer-x86_64-unknown-linux-gnu
do
  filename="./${target}.tar.gz"
  url="https://github.com/${REPO}/releases/download/${RELEASE_TAG}/${target}.tar.gz"
  hash=$(cat "$filename" | shasum -a 256 | awk '{print $1}')
  echo "url \"${url}\""
  echo "sha256 \"${hash}\""
done
