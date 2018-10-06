#!/bin/sh

CN=${1:-$CN}
echo CN=$CN

mkdir -p "certs/$CN"

openssl req -subj "/CN=${CN}" -nodes -newkey rsa:2048 -keyout "certs/$CN/privkey.pem" -out "certs/$CN/csr.pem"
openssl x509 -req -sha256 -days 3650 -in "certs/$CN/csr.pem" -CA ca/chain.pem -CAkey ca/cakey.pem -set_serial 1 -out "certs/$CN/fullchain.pem"