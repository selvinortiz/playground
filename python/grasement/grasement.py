import time
import random


def red(string):
    return '\033[91m{}\033[0m'.format(string)


def green(string):
    return '\033[92m{}\033[0m'.format(string)


def yellow(string):
    return '\033[93m{}\033[0m'.format(string)


def blue(string):
    return '\033[94m{}\033[0m'.format(string)


def bold(string):
    return '\033[1m{}\033[0m'.format(string)


def get_grid(rows=5, cols=10):
    """Takes two arguments, rows and cols.
    It uses passed in arguments to generates a grid of x,y coordinates contained in tuples
    """
    grid = []

    for row in range(rows):
        for col in range(cols):
            grid.append((col, row))

    return grid


def get_locations(rows=5, cols=10):
    """Takes two arguments, rows and cols.
    It uses passed in arguments and returns three random locations to place on a grid of (x,y) coordinates
    """
    grid = get_grid(rows, cols)

    return random.choice(grid), random.choice(grid), random.choice(grid)


def draw_grid(rows, cols, player, grayson, door):
    """Displays a grid on standard output"""
    print('\n You are at: [{}, {}]'.format(player[0], player[1]))

    for row in range(rows):
        for col in range(cols):
            xy = (col, row)

            if player == xy:
                print('|{}'.format(bold('X')), end='')
            elif grayson == xy:
                print('|{}'.format(red('O')), end='')
            elif door == xy:
                print('|{}'.format(green('#')), end='')
            else:
                print('|_', end='')
            
            if col == cols - 1:
                print('|')
    return player


#
# Displays the objectives and instructions for the game
def show_help():
    print(
        '\n'
        'Grasement 1.0\n'
        '\n'
        'The objective of the game,\n'
        'is to make it to the door [#] as quickly as possible,\n'
        'without running into the monster [O].\n'
        'In this game, you are [X].\n'
        '\n'
        'You can type\n'
        '  U to go up\n'
        '  D to go down\n'
        '  L to go left\n'
        '  R to go right\n'
        'Then, type enter to make the move.\n'
    )


#
# Gets the time since the game started
def get_elapsed_time(started):
    return time.time() - started


#
# Begins play
def play(rows, cols, competitive=False):

    level = 1

    show_help()

    if competitive:
        while True:
            level = input('\nWhat level do you want to start at? [1, 2, 3, 4, 5] : ')

            if level in '12345':
                level = int(level)
                break

    start_time = time.time()

    if level > 1:
        rows *= level
        cols *= level

    player, grayson, door = get_locations(rows, cols)

    x, y = player

    moves = 0

    while True:
        moves += 1

        if moves > 1 and moves % 3 == 0:
            draw_grid(rows, cols, (x, y), (random.randint(0, cols), random.randint(0, rows)), door)
        else:
            draw_grid(rows, cols, (x, y), grayson, door)

        if (x, y) == grayson:
            print(red('\nSorry, you lose!'))
            break
        elif (x, y) == door:
            print(green('\nYay, you won in {0:.2f} seconds!').format(get_elapsed_time(start_time)))
            break

        move = input('> ')

        if move == 'L':
            x -= 1
        elif move == 'R':
            x += 1
        elif move == 'U':
            y -= 1
        elif move == 'D':
            y += 1
        else:
            print('Move not allowed.')
            continue


#
# Play Grasement
play(rows=5, cols=10, competitive=True)
