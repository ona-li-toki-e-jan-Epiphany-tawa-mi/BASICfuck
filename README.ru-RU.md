Смотреть на другом языке: [English](README.md), [toki pona](README.tok.md)

# BASICfuck
REPL для языка brainfuck, проектированен для Commodore 64 и написанен на BASIC.

## Детали реализации.
REPL выделяет 16.500 ячеек памяти, у каждой 8-разрядное целое число.<br>
BASICfuck включает в себя дополнительные символы "(", ")", "@" и "*" для редактирования памяти C64.<br>
После выполнения кода REPL печатает значение и локацию текущей ячейки, вместе с текущей локации в памяти С64.<br>
Символ ";" собирает ввод непосредственно с клавиатуры.

Непрерывные "[]" циклы возвратят ошибку ?UNTERMINATED LOOP.<br>
Попытка переместить любой указатель памяти вне границ приведет к тому, что он переместится на края той области памяти ([0, 16.500) и [0, 65535)).<br> 
Из-за того, как работает команда [INPUT](https://www.c64-wiki.com/wiki/INPUT "Информация о команде INPUT (на английском и немецком).") (на английском и немецком), ввести несколько символов вам м.б. нельзя. Попытка ввести такие приведет к ошибке ?EXTRA IGNORED.

## Команды.
#### Команды brainfuck (просмотрите [страницу Википедии на brainfuck](https://ru.wikipedia.org/wiki/Brainfuck "Страница Википедии на языке brainfuck.") для получения подробнее информации.)
- "+" увеличивает значение в текущей ячейке на 1.
- "-" уменьшает значение в текущей ячейке на 1.
- "<" перемещает указатель памяти налево.
- ">" перемещает указатель памяти направо.
- "[" переходит вперед по программе на символ до соответствующей "]", если значение в текущей ячейке 0.
- "]" переходит назад по программе на соответствующую "[", если значение в текущей ячейке не 0.
- "." печатает значение в текущей ячейки как символ.
- ";" собирает символ с клавиатуры и сохраняет его в теущей ячейке (как и ",").
#### Только в BASICfuck.
- "(" перемещает указатель памяти C64 налево.
- ")" перемещает указатель памяти C64 направо.
- "@" считывает значение из текущей локации в памяти C64 и сохраняет его в текущей ячейке.
- "*" считывает значение из текущей ячейке и сохраняет его в текущей локации в памяти C64.
#### Комады REPL.
- "?" печатает полезную информацию.
- "!" выходит из REPL.

"?" и "!" надо быть в начале строки, чтобы REPL их выполнил. Если так, то ничего больше не выполнит.
#### Допольнительные управления.
Нажатие клавишы F1 при выполнении программы brainfuck остановит ее и вернется в строки ввода.

## Как загрузить и запустить.
Можно найти .prg файл и образ диска (.d64) для BASICfuck в [releases.](https://github.com/ona-li-toki-e-jan-Epiphany-tawa-mi/BASICfuck/releases/tag/BASICfuck-v2.1 "Выпуск BASICfuck v2.1.")

Если вы используете эмулятор как [VICE,](https://vice-emu.sourceforge.io "Главнвя страница VICE.") то можете либо напрямую загрузить .prg при его началии, либо подключить образ, а затем загрузить.<br>
Если используете [C64 Maxi,](https://retrogames.biz/thec64 "Главная страница The C64 Maxi.") то можете поставить образ на USB-накопитель в формате FAT32 и подключить его. Чтобы подключить, вставьте накопитель в C64, откройте меню, откройте меню media и подключите образ, нажав ENTER на имени.<br>
Если используете реальный Commadore 64, я не могу вам помочь)). Ну гадаю возможно просто [ввести программу сами.](BASICfuck.bas "Код BASICfuck.")

После подключении образа диски можете загрузить BASICfuck этим:
```BASIC
LOAD"BF-REPL",8
```

И после этого или непосредственной загрузки .prg просто введите:
```BASIC
RUN
```
и наслаждайтесь своим новым старым опытом с brainfuck!

## Примеры программ. 
#### Hello World с помощью "@".
```brainfuck
@>)@-[<+>--]<--.---.+++++++..+++.                      Печатает HELLO
>(@[-<->]<.>)@[-<+>]<.--------.+++.------.--------.    Печатает пробел и WORLD
```

Это использует тот фак, что у первых двух ячеек в памяти C64 по умолчанию есть 47 и 55.<br>
Будьте в курсе, что эти значения может измениться. Это может быть работать не всегда.

#### Переключение между цветами границы экрана.
```brainfuck
-[->++++++++++[-)))))))))))))))))))))]<]--[--((]+++[-(((((](    Переместить указатель памяти C64 на $D020 в котором сохраняется цвет границы Занимает вечность
+[>*+<]                                                         "Быстро" переключает между цветами границы
```

#### Программа Cat / редактор экрана.
```brainfuck
+[;.]
```

#### Обратный Cat.
```brainfuck
+[;.[->+>+<<]>>[-<<+>>]<-------------]<<[.[-]<]
```

Введите, что хотите напечатать в обратном направлении, а затем нажмите ENTER. Ввод показывается пока вводите.

#### "Случайная" лабиринт-вещь.
```brainfuck
->+++++[-<---------->]<     Устанавливает текущую ячейку на 205 которая код для обратной косой черты
[>@)[<+>>]<<.>[<->>]<<<]    Печатает лабиринт Печатает обратную косую если в текущей ячейке 0 а косую если нет
```

Эта классическая программа, переписана на brainfuck BASICfuck, использует значения, которые сохраняется в памяти C64, чтобы сгенировать случайные числа. Если выбранное значение в памяти 0, то напечатается обратную косую черту, а если нет, то косую.<br> 
Значения в памяти обычно достаточно случайные, хотя есть большие области лишь с одним типом косых.