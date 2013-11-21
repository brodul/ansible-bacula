#!/usr/bin/env bash
set -e

CERT_DIR="./cert"

function generate_fd_keypair {
    openssl genrsa -out $CERT_DIR/$1.key 2048
    openssl req -new -key $CERT_DIR/$1.key -x509 -out $CERT_DIR/$1.cert
    cat $CERT_DIR/$1.key $CERT_DIR/$1.cert > $CERT_DIR/$1.pem
}

if [ $# -ne 1 ]
    then 
        echo "Number of arguments must be 1"
        exit 1
    fi

mkdir -p $CERT_DIR
generate_fd_keypair $1
