[This classic program rewritten in BASICfuck brainfuck relies on reading the values stored in the C64's memory to generate "random" numbers.]
[If the selected value in memory is 0, a backslash is printed; if it is not 0, then a forward slash will be printed.]
[The data is random enough most of the time, though you will probably find large areas with only one type of slash.]

->+++++[-<---------->]<     Initializes the current cell to 205 the code for the backslash
[>@)[<+>>]<<.>[<->>]<<<]    Prints out maze Prints a backslash if the selected C64 memory cell is 0 or a forward slash if it is not