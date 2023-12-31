#! /usr/bin/env python3
from sys import argv


def factorize():
    with open(argv[1]) as file:
        for number in file:
            num = int(number)
            flag = 0
            for i in range(2, int(num / 2) + 1, 1):
                if num % i == 0:
                    print("{:d}={}*{}".format(num, num // i, i))
                    flag = 1
                    break
            if flag == 0:
                print("{:d}={}*{}".format(num, num, 1))


if __name__ == "__main__":
    factorize()
