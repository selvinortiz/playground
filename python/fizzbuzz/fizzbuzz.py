
def main():
    fizzbuzz()


def fizzbuzz():
    """Prints the numbers from 0 to 100
    - For each number divisible by 3, fizz will be printed.
    - For each number divisible by 5, buzz will be printed.
    - For each number divisible by 3 and 5, fizzbuzz will be printed.
    """
    for i in range(1, 101):
        print("{}: ".format(i), end='')
        if i % 3 == 0 and i % 5 == 0:
            print("fizzbuzz")
        elif i % 3 == 0:
            print("fizz")
        elif i % 5 == 0:
            print("buzz")
        else:
            print(i)


if __name__ == "__main__":
    main()
