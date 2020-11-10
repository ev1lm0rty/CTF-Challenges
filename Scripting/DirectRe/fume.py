import requests
import re
r = requests.get("http://3.228.188.2/start.php", allow_redirects=False)
while(r.status_code == 301):
    newurl = "http://3.228.188.2/" + r.headers['Location']
    try:
        print(str(re.compile(r'\s[a-z0-9\.\{\}_]\s').search(r.text).group(0)).strip(), end='', flush=True)
    except:
            pass
    r = requests.get(newurl, allow_redirects=False)
