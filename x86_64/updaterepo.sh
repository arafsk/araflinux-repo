#!/bin/bash

rm araflinux_repo*

echo "repo-add"
repo-add araflinux_repo.db.tar.gz *.pkg.tar.zst

sleep 1

rm araflinux_repo.db

rm araflinux_repo.files

mv araflinux_repo.db.tar.gz araflinux_repo.db

mv araflinux_repo.files.tar.gz araflinux_repo.files

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
