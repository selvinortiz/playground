#ifndef CONSOLE_H
#define CONSOLE_H

/**
 * Prints the passed in string in red
 *
 * @param str
 */
void red(char *str);

/**
 * Prints the passed in string in green
 *
 * @param str
 */
void green(char *str);

/**
 * Prints the passed in string in yellow
 *
 * @param str
 */
void yellow(char *str);

/**
 * Prints the passed in string in blue
 *
 * @param str
 */
void blue(char *str);

/*
 * Reads a line of text from standard input and returns it as a
 * string (char *), sans trailing newline character.  (Ergo, if
 * user inputs only "\n", returns "" not NULL.)  Returns NULL
 * upon error or no input whatsoever (i.e., just EOF).  Leading
 * and trailing whitespace is not ignored.  Stores string on heap
 * (via malloc); memory must be freed by caller to avoid leak.
 */
char * getString();

#endif
