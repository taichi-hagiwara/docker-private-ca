#!/bin/sh

CN=${1:-$CN}

echo CN=$CN

openssl req -x509 -sha256 -days 3650 -subj "/CN=${CN}" -nodes -newkey rsa:2048 -keyout ca/cakey.pem -out ca/chain.pem