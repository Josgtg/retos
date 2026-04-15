with open("the_numbers.txt", "r") as file:
    for number in file.readline().split():
        try:
            print(chr(int(number) + 64), end='')
        except Exception:
            print(number, end='')
