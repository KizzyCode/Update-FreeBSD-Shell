#!/bin/sh
set -eu

# Get env
PREFIX="${PREFIX:-/usr/local}"

# Print status info
echo "Creating entries..."

# Create update.d directory
install -v -d "$PREFIX/bin"
install -v -d "$PREFIX/libexec"
install -v -d "$PREFIX/libexec/update.d"

# Install scripts
install -v -m 0755 "bin/update" "$PREFIX/bin/update"
install -v -m 0755 "libexec/update" "$PREFIX/libexec/update"
install -v -m 0755 "libexec/update.d/1-freebsd" "$PREFIX/libexec/update.d/1-freebsd"
install -v -m 0755 "libexec/update.d/2-freebsd-packages" "$PREFIX/libexec/update.d/2-freebsd-packages"
install -v -m 0755 "libexec/update.d/3-freebsd-ports" "$PREFIX/libexec/update.d/3-freebsd-ports"
