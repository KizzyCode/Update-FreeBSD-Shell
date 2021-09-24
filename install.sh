#!/bin/sh
set -eu

# Get env
PREFIX="${PREFIX:-/usr/local}"

# Print status info
echo "Creating entries..."

# Create update.d directory
install -v -d "$PREFIX/sbin"
install -v -d "$PREFIX/libexec/update.d"

# Install scripts
install -v -m 0755 "sbin/update" "$PREFIX/sbin/update"
install -v -m 0755 "libexec/update.d/001-freebsd" "$PREFIX/libexec/update.d/001-freebsd"
install -v -m 0755 "libexec/update.d/002-freebsd-packages" "$PREFIX/libexec/update.d/002-freebsd-packages"
install -v -m 0755 "libexec/update.d/003-freebsd-ports" "$PREFIX/libexec/update.d/003-freebsd-ports"
install -v -m 0755 "libexec/update.d/011-jails" "$PREFIX/libexec/update.d/011-jails"
install -v -m 0755 "libexec/update.d/012-jails-packages" "$PREFIX/libexec/update.d/012-jails-packages"
install -v -m 0755 "libexec/update.d/013-jails-ports" "$PREFIX/libexec/update.d/013-jails-ports"
install -v -m 0755 "libexec/update.d/014-jails-restart" "$PREFIX/libexec/update.d/014-jails-restart"
