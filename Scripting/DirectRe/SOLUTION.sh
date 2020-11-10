python3 sol.py | grep "<h1>" | grep -v Morty | awk '{print $4}' | tr -d '\n'
