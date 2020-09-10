#!/bin/bash

mkdir ToldYouToLearnGit
cd ToldYouToLearnGit
git init

for i in {1..69} 
do
  head  /dev/random | md5sum > $i.txt
  p=$(echo $i | md5sum)
  git add .
  git commit -m "$p"
done

git checkout -b 'morty'

for i in {69..100}
do
  head /dev/random | md5sum > $i.txt
  p=$(echo $i | md5sum)
  git add .
  git commit -m "$p"
done

echo "flag{1_kn0w_y0u_h4t3_G1t}" > huh.txt
git add huh.txt
git commit -m 'd8e8fcaM0RTY6fd7cb4cb0031ba249'
rm -rf huh.txt

for i in {100..134}
do
  head /dev/random | md5sum > $i.txt
  p=$(echo $i | md5sum)
  git add .
  git commit -m "$p"
done

git checkout master
