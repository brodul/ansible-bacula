#!/usr/bin/env bash
set e

CERT_DIR="./cert"

function generate_master_keypair {
    openssl genrsa -out $CERT_DIR/master.key 2048
    openssl req -new -key $CERT_DIR/master.key -x509 -out $CERT_DIR/master.cert
}

mkdir -p $CERT_DIR
generate_master_keypair
