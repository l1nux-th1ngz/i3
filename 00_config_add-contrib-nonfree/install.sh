#!/bin/bash
# ACTION: Add Debian repositories contrib and non-free
# INFO: Contrib and non-free repositories are not enabled by default in Debian install
# DEFAULT: y

# Check root
[ "$(id -u)" -ne 0 ] && { echo "Must run as root" 1>&2; exit 1; }


(
# Add contrib section
deb_lines_contrib="$(egrep '^(deb|deb-src) (http://deb.debian.org/debian/|http://security.debian.org/debian-security)' /etc/apt/sources.list | grep -v contrib)"
IFS=$'\n'
for l in $deb_lines_contrib; do
	sed -i "s\\^$l$\\$l contrib\\" /etc/apt/sources.list
done

# Add non-free section
deb_lines_nonfree="$(egrep '^(deb|deb-src) (http://deb.debian.org/debian/|http://security.debian.org/debian-security)' /etc/apt/sources.list | grep -v non-free)"
for l in $deb_lines_nonfree; do
	sed -i "s\\^$l$\\$l non-free\\" /etc/apt/sources.list
done
)


# Update and install packages
apt-get update  
