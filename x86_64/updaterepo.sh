#!/bin/bash

rm araf_repo*

echo "repo-add"
repo-add -n -R araf_repo.db.tar.gz *.pkg.tar.zst

sleep 1

rm araf_repo.db

rm araf_repo.files

mv araf_repo.db.tar.gz araf_repo.db

mv araf_repo.files.tar.gz araf_repo.files

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
