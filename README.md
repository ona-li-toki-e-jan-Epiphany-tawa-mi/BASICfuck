# BASICfuck
A brainfuck REPL for the Commodore 64 written in BASIC.

## Implementation details.
The REPL allocates 16,500 cells of memory, each storing an 8-bit integer.<br>
BASICfuck includes the additional characters '(', ')', '@', and '*' for editing the C64's memory.<br>
The REPL will print out the value and location of the current cell, along with the current location in C64 memory, after it finishes executing code.<br>
Pressing the F1 key while a brainfuck program is running will abort it, returning you to the input line.<br>
';' gathers input directly from the keyboard.

Unterminated '[]' loops will yield an ?UNTERMINATED LOOP error.<br>
Attempting to move either memory pointer outside of bounds will result in it being clamped to the edges ([0, 16,800) and [0, 65535]).<br>
'?' and '!' must be placed at the start of the line to be evaluated. If they are then no other character in the line will be evaluated.<br>
Because of the inner workings of [INPUT](https://www.c64-wiki.com/wiki/INPUT), you might not be able to enter certain characters, yielding an ?EXTRA IGNORED error.

## Commands.
#### Brainfuck commands (view [the brainfuck esolangs wiki](https://esolangs.org/wiki/Brainfuck#Language_overview) for more information.)
- '+' increments the current cell.
- '-' decrements the current cell.
- '<' moves the memory pointer to the left.
- '>' moves the memory pointer to the right.
- '[' jumps past the matching ']' if the current cell is 0.
- ']' jumps to the matching '[' if the current cell is not 0.
- '.' prints the current cell as a character.
- ';' takes a character as input and stores its numeric value into the current cell (equivalent of ','.)
#### BASICfuck specific.
- '(' moves the C64 memory pointer to the left.
- ')' moves the C64 memory pointer to the right.
- '@' reads the value from the current position in C64 memory into the current cell.
- '*' puts the value of the current cell into the current position in C64 memory.
#### REPL commands.
- '?' prints help information.
- '!' exits the REPL.

## Example programs. 
#### Hello World using '@'.
```brainfuck
@>)@-[<+>--]<--.---.+++++++..+++.                      Prints HELLO
>(@[-<->]<.>)@[-<+>]<.--------.+++.------.--------.    Prints a space and WORLD
```

This utilizes the fact that the first two memory addresses of the C64 hold 47 and 55 by default. <br>
Keep in mind that these values may change; this might not always work.

#### Cycling screen border colors.
```brainfuck
-[->++++++++++[-)))))))))))))))))))))]<]--[--((]+++[-(((((](    Moves the C64 memory pointer to $D020, the location of the border's color. Takes forever.
+[>*+<]                                                         "Rapidly" switches border color.
```

#### Cat program / screen editor.
```brainfuck
+[;.]
```