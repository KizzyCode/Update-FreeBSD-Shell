#!/bin/sh
set -eu

# Get env
PREFIX="${PREFIX:-/usr/local}"

# Print status info
echo "Deleting entries..."

# Install scripts
rm -v -f "$PREFIX/sbin/update"
rm -v -f "$PREFIX/libexec/update"
rm -v -f "$PREFIX/libexec/update.d/1-freebsd"
rm -v -f "$PREFIX/libexec/update.d/2-freebsd-packages"
rm -v -f "$PREFIX/libexec/update.d/3-freebsd-ports"

# Remove update.d
rm -v -r -f "$PREFIX/libexec/update.d"
