#!/bin/bash
b=index.php
flag=flag{woah_you_can_script_morty_impressed}
q=0
for i in {1..100};
do
  a=$(echo -n bb$i | md5sum | awk '{print $1}')
  f=$a.php
  #echo "<html><head><meta http-equiv=\"refresh\" content=\"1; url=/$f\"/meta></head>" > $b
  #echo "<?php header('Location: $f', true, 301);exit();?>" >$b
  if [ $((i%2)) -eq 0 ] ;
  then
    echo "<!DOCTYPE html><html><body> <h1> ${flag:$q:1} </h1></body></html>" > $b
    q=$((q+1))
  else
    echo "<!DOCTYPE html><html><body> <h1> Morty Is Lazy As Fuck </h1> </body></head></html>" > $b
  fi
  echo "<?php header('HTTP/1.1 301 Moved Permanently');header('Location:/$f');exit;?>" >>$b

  b=$f
done
