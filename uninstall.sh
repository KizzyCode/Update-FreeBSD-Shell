#!/bin/sh
set -eu

# Get env
PREFIX="${PREFIX:-/usr/local}"

# Print status info
echo "Deleting entries..."

# Uninstall scripts
rm -v -f "$PREFIX/sbin/update"
rm -v -f "$PREFIX/libexec/update.d/001-freebsd"
rm -v -f "$PREFIX/libexec/update.d/002-freebsd-packages"
rm -v -f "$PREFIX/libexec/update.d/003-freebsd-ports"
rm -v -f "$PREFIX/libexec/update.d/011-jails"
rm -v -f "$PREFIX/libexec/update.d/012-jails-packages"
rm -v -f "$PREFIX/libexec/update.d/013-jails-ports"
rm -v -f "$PREFIX/libexec/update.d/014-jails-restart"

# Remove update.d
rm -v -r -f "$PREFIX/libexec/update.d"
