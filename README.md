# BASICfuck

A brainfuck REPL for the Commodore 64 written in BASIC.

## Implementation details

The REPL allocates 16,500 cells of memory, each storing an 8-bit integer.

BASICfuck includes the additional characters '(', ')', '@', and '*' for editing
the C64's memory.

The REPL will print out the value and location of the current cell, along with
the current location in C64 memory, after it finishes executing code.

';' gathers input directly from the keyboard.

Unterminated '[]' loops will yield an ?UNTERMINATED LOOP error.

Attempting to move either memory pointer outside of bounds will result in it
being clamped to the edges ([0, 16,500) and [0, 65535]).

Because of the inner workings of INPUT (https://www.c64-wiki.com/wiki/INPUT),
you might not be able to enter certain characters, yielding an ?EXTRA IGNORED error.

## Commands

#### Brainfuck commands (view the brainfuck Wikipedia page (https://wikipedia.org/wiki/Brainfuck) for more information)

- '+' increments the current cell.
- '-' decrements the current cell.
- '<' moves the memory pointer to the left.
- '>' moves the memory pointer to the right.
- '[' jumps past the matching ']' if the current cell is 0.
- ']' jumps to the matching '[' if the current cell is not 0.
- '.' prints the current cell as a character.
- ';' takes a character as input and stores its numeric value into the current cell (equivalent of ','.)

#### BASICfuck specific

- '(' moves the C64 memory pointer to the left.
- ')' moves the C64 memory pointer to the right.
- '@' reads the value from the current position in C64 memory into the current cell.
- '*' puts the value of the current cell into the current position in C64 memory.

#### REPL commands

- '?' prints help information.
- '!' exits the REPL.

'?' and '!' must be placed at the start of the line to be evaluated. If they are
then no other character in the line will be evaluated.

#### Extra controls

Pressing the F1 key while a brainfuck program is running will abort it,
returning you to the input line.

## How to load and run

The .prg and disk image (.d64) for BASICfuck can be found in the releases tab
(https://github.com/ona-li-toki-e-jan-Epiphany-tawa-mi/BASICfuck/releases).

If you are using a software emulator like VICE
(https://vice-emu.sourceforge.io), you can either directly load the .prg or
attach the disk image and load it.

If you are using the C64 Maxi (https://retrogames.biz/thec64), you can put the
disk image onto a FAT32-formatted usb drive and attach it. To attach it, insert
it into the C64, open the menu, open the media menu, and mount the disk image by
pressing enter on it.

If you are using an acutal Commadore 64, you're on your own :p. I guess you can
always type it in (see `BASICfuck.bas`.)

Once a disk image is mounted you can load it with:

```BASIC
LOAD"BF-REPL",8
```

And after that or directly loading the .prg, simply type:

```BASIC
RUN
```

and enjoy your new old brainfuck experience.

## Example programs

#### Hello World using '@'

```brainfuck
@>)@-[<+>--]<--.---.+++++++..+++.                      Prints HELLO
>(@[-<->]<.>)@[-<+>]<.--------.+++.------.--------.    Prints a space and WORLD
```

This utilizes the fact that the first two memory addresses of the C64 hold 47
and 55 by default. Keep in mind that these values may change; this might not
always work.

#### Cycling screen border colors

```brainfuck
-[->++++++++++[-)))))))))))))))))))))]<]--[--((]+++[-(((((](    Moves the C64 memory pointer to $D020 the location of the border's color Takes forever
+[>*+<]                                                         "Rapidly" switches border color
```

#### Cat program / screen editor

```brainfuck
+[;.]
```

#### Reverse cat

```brainfuck
+[;.[->+>+<<]>>[-<<+>>]<-------------]<<[.[-]<]
```

Type what you want to be reversed, and then press enter. Your input will be
displayed as you type it.

#### "Random" maze thing

```brainfuck
->+++++[-<---------->]<     Initializes the current cell to 205 the code for the backslash
[>@)[<+>>]<<.>[<->>]<<<]    Prints out maze Prints a backslash if the selected C64 memory cell is 0 or a forward slash if it is not
```

This classic program rewritten in BASICfuck brainfuck relies on reading the
values stored in the C64's memory to generate "random" numbers. If the selected
value in memory is 0, a backslash is printed; if it is not 0, then a forward
slash will be printed.

The data is random enough most of the time, though you will probably find large
areas with only one type of slash.

## Links

Demonstration:<br>
https://odysee.com/BASICfuck-Demonstration---a-Brainfuck-REPL-for-the-Commodore-64:e0e5115474fe6334db53f93302e35adb86c45e6a?r=HYroMZaqrVN4gL5oSJ35gcTgt3K56r39
