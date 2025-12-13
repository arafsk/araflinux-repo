#!/bin/bash

rm araflinux*

echo "repo-add"
repo-add -n -R araflinux.db.tar.gz *.pkg.tar.zst    

sleep 1

rm araflinux.db

rm araflinux.files

mv araflinux.db.tar.gz araflinux.db

mv araflinux.files.tar.gz araflinux.files

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
