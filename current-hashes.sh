#!/usr/bin/env bash

set -e

REPO="exein-io/homebrew-tools"
RELEASE_TAG="analyzer-cli-0.4.1"
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
