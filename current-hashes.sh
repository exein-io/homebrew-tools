#!/usr/bin/env bash

set -e

REPO="exein-io/homebrew-tools"
RELEASE_TAG="analyzer-cli-0.4.1"

for target in \
  analyzer-aarch64-apple-darwin \
  analyzer-x86_64-apple-darwin \
  analyzer-aarch64-unknown-linux-gnu \
  analyzer-x86_64-unknown-linux-gnu
do
  url="https://github.com/${REPO}/releases/download/${RELEASE_TAG}/${target}.tar.gz"
  hash=$(curl -sL "$url" | shasum -a 256 | awk '{print $1}')
  echo "url \"${url}\""
  echo "sha256 \"${hash}\""
done
