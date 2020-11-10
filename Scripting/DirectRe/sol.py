#!/usr/bin/python3

import requests
import sys

url = "http://3.228.188.2/start.php"
flag = ""
s = requests.Session()
s.max_redirects=1000
r = s.get(url, allow_redirects=True)
for i in r.history:
    print(i.text)

