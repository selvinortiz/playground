import sys
import json

def main():
    file = open('/Users/selvinortiz/Library/Application Support/Google/Chrome/Default/Bookmarks')

    print('{}', json.loads(file.read()))


if __name__ == "__main__":
    main()
