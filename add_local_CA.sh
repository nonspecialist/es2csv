#!/bin/sh
#
# If there are any local certificate authorities to be trusted, add them to the cert store
#

DIR=$(dirname $0)
[ -d $DIR/ca-certs ] || exit 0
echo Adding CA certificates to trust store
cp $DIR/ca-certs/* /etc/ssl/certs
/usr/bin/c_rehash /etc/ssl/certs -n -v
