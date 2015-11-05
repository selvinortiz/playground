# Returns the (nth) number in the fibonacci sequence
#
# Sequence
# --------
# n  =  0  1  2  3  4  5  6   7   8   9  10  11   12   13   14...
# xn =  0  1  1  2  3  5  8  13  21  34  55  89  144  233  377...
def main():
    n = input("Give me a number and I'll give you its fibonacci sequence place: ")
    
    print("You gave me ({}), I give you ({})".format(n, fib(int(n))))


def fib(n):
    """Returns the (nth) number in the fibonacci sequence"""
    if n == 0:
        return 0
    elif n == 1 or n == 2:
        return 1
    else:
        return fib(n-1) + fib(n-2)


if __name__ == "__main__":
    main()
