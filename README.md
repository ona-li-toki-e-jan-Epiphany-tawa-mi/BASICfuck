# BASICfuck
A brainfuck REPL for the Commodore 64 written in BASIC.

## Implementation details.
The REPL allocates 15,000 cells of memory, each storing 8-bit integers.

Unterminated [] loops will yield an ?UNTERMINATED LOOP error.<br>
Attempting to move the memory pointer outside of bounds will result in it being clamped to the edges [0, 15,000).

The REPL will print out the value and location of the curent cell after it finishes executing code.

Pressing the F1 key while a brainfuck program is running will abort it, returning you to the input line.

Because of the inner workings of [INPUT](https://www.c64-wiki.com/wiki/INPUT), you might not be able to enter certain characters, yielding an ?EXTRA IGNORED error.

? and ! must be placed at the start of the line to be evaluated. If they are then no other character will be evaluated.

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
- '?' prints help information.
- '!' exits the REPL.

## How to run.
Included in releases is [a .d64 file.](https://github.com/ona-li-toki-e-jan-Epiphany-tawa-mi/BASICfuck/releases/tag/BASICfuck-v0.0)<br>
This can be loaded into a software emulator, or onto a FAT32-formatted usb drive and inserted into the C64 Maxi and mounted (open menu, open media menu, press enter on BASICfuck.d64.)

Once the .d64 file is loaded into your emulator of choice, you can load and run it using the following commands:
```BASIC
LOAD "BASICFUCK",8
RUN
```
(The 8 assumes that it is the only .d64 loaded, you may need to change it if this is not the case.)

For putting it onto an actual Commodore 64, you will need to figure it out yourself ;p. Of course, you can always [type it in.](BASICfuck.bas)
