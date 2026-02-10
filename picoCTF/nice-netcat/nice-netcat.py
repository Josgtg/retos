flag = ""
with open("output", "r") as output:
    for line in output.readlines():
        flag += chr(int(line))
print(flag)
