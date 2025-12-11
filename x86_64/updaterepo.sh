#!/bin/bash

rm arafsk-repo*

echo "repo-add"
repo-add -n -R arafsk-repo.db.tar.gz *.pkg.tar.zst

sleep 1

rm arafsk-repo.db

rm arafsk-repo.files

mv arafsk-repo.db.tar.gz arafsk-repo.db

mv arafsk-repo.files.tar.gz arafsk-repo.files

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
