#!/usr/bin/env bash
#
# Script name: build-db.sh
# Description: Script for rebuilding the database for araflinux-repo.
# GitLab: https://www.gitlab.com/dwt1/araflinux-repo
# Contributors: Derek Taylor

# Set with the flags "-e", "-u","-o pipefail" cause the script to fail
# if certain things happen, which is a good thing.  Otherwise, we can
# get hidden bugs that are hard to discover.
set -euo pipefail

## Arch: x86_64
cd x86_64
rm -f araflinux-repo*

echo "###################################"
echo "Building for architecture 'x86_64'."
echo "###################################"

## repo-add
## -s: signs the packages
## -n: only add new packages not already in database
## -R: remove old package files when updating their entry
repo-add -s -n -R araflinux-repo.db.tar.gz *.pkg.tar.zst

# Removing the symlinks because GitLab can't handle them.
rm araflinux-repo.db
rm araflinux-repo.db.sig
rm araflinux-repo.files
rm araflinux-repo.files.sig

# Renaming the tar.gz files without the extension.
mv araflinux-repo.db.tar.gz araflinux-repo.db
mv araflinux-repo.db.tar.gz.sig araflinux-repo-db.sig
mv araflinux-repo.files.tar.gz araflinux-repo.files
mv araflinux-repo.files.tar.gz.sig araflinux-repo.files.sig

echo "#######################################"
echo "Packages in the repo have been updated!"
echo "#######################################"
