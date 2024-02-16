lukin kepeken toki ante: [English](README.md "View in English"), [Русский](README.ru-RU.md "Смотреть на русском")

# ilo BASICfuck
ilo REPL pi toki wawa Brainfuck tawa ilo nanpa Kamato (Commodore) 64 lon toki wawa BASIC. (ilo REPL li ilo pi pali e lipu wawa pi ilo nanpa. sina sitelen e nimi wawa la ona li pali e nimi li toki e ijo kama).

## sona kepeken pi nasin pali e lipu wawa
ilo REPL li kama jo e poki nanpa 16,500. ona ale li jo e nanpa pi lili ala pi nanpa lili lili 8.<br>
sin la ilo BASICfuck li jo e nimi wawa sin ("(" en ")" en "@" en "*") tawa ante e poki pi ilo Kamato 64.<br>
ilo REPL li pini pali e nimi wawa la ona li toki e poki nanpa Brainfuck pi tenpo ni e nanpa lon ona e poki nanpa pi ilo Kamato 64 pi tenpo ni.<br>
nimi wawa ";" li kama jo e sitelen tan jan kepeken ilo sitelen pi ilo nanpa.

nimi wawa "[" li jo ala e nimi "]" ona anu nasin ante la ilo REPL li toki e ike ?UNTERMINATED LOOP li pali ala e nimi wawa.<br>
sina lukin ante e poki nanpa pi tenpo ni tawa poki ala la ona li ante tawa sinpin (poki nanpa Brainfuck la tan 0 tawa 16,499. poki nanpa pi ilo Kamato 64 la tan 0 tawa 65534).<br>
tan [nimi wawa INPUT](https://www.c64-wiki.com/wiki/INPUT "sona pi nimi wawa INPUT (li lon toki Inli en Tosi).") (li lon toki Inli en Tosi) pi toki BASIC la ken la sina ken ala sitelen e sitelen lili (sama ","). ni la ona li toki e ike ?EXTRA IGNORED.

## nimi wawa.
#### nimi pi toki Brainfuck (sina wile e sona mute la o lukin [e lipu sona Wikipesija pi toki Brainfuck](https://wikipedia.org/wiki/Brainfuck "lipu sona Wikipesija pi toki Brainfuck (li lon toki pona ala)") (li lon toki pona ala)).
- "+" li en e 1 tawa poki nanpa pi tenpo ni.
- "-" li weka e 1 tan poki nanpa pi tenpo ni.
- "<" li pali e ni: poki nanpa lon poka pilin li poki pi tenpo ni.
- ">" li pali e ni: poki nanpa lon poka pi pilin ala li poki pi tenpo ni.
- "[" poki nanpa pi tenpo ni li jo e 0 la ilo REPL li pini pali lon ni li open pali lon nimi "]" ona.
- "]" poki nanpa pi tenpo ni li jo ala e 0 la ilo REPL li pini pali lon ni li open pali lon nimi "[" ona.
- "." li toki e nanpa lon poki nanpa pi tenpo ni sama sitelen.
- ";" li kama jo e sitelen tan ilo sitelen pi ilo nanpa li poki e nanpa ona lon poki nanpa pi tenpo ni (sama nimi ",").
#### nimi pi ilo BASICfuck taso.
- "(" li pali e ni: poki nanpa pi ilo Kamato 64 lon poka pilin li poki pi tenpo ni.
- ")" li pali e ni: poki nanpa pi ilo Kamato 64 lon poka pi pilin ala li poki pi tenpo ni.
- "@" li pana e nanpa tan poki nanpa Brainfuck pi tenpo ni lon poki pi ilo Kamato 64 pi tenpo ni.
- "*" li pana e nanpa tan poki nanpa pi ilo Kamato 64 pi tenpo ni lon poki Brainfuck pi tenpo ni.
#### nimi REPL.
- "?" li toki e sona kepeken.
- "!" li pini e ilo REPL.

nimi "?" en "!" li wile lon open pi nasin sitelen tawa ni: ilo REPL li pali e ona. ona li lon ni la ilo REPL li pali ala e nimi ante.
#### nasin kepeken sin.
sina pilin e nena F1 la ilo REPL li pini pali e nimi.

## nasin pi kama jo en open.
poki nimi .prg en .d64 tawa ilo BASICfuck li lon [lipu Releases.](https://github.com/ona-li-toki-e-jan-Epiphany-tawa-mi/BASICfuck/releases/tag/BASICfuck-v2.1 "poki nimi pi ilo BASICfuck pi suli 2.1.")

sina kepeken e ilo pi sama e ilo nanpa Kamato 64 (sama [ilo VICE](https://vice-emu.sourceforge.io "lipu suli pi ilo VICE (li lon toki Inli).") (li lon toki Inli)) la sina ken open e ona kepeken poki .prg kin anu pana e poki .d64 lon ona en kama jo e ijo lon ona.<br>
sina kepeken [e ilo C64 Maxi](https://retrogames.biz/thec64 "lipu suli pi ilo C64 Maxi (li lon toki Inli).") (li lon toki Inli) la sina ken pana e poki .d64 lon poki palisa kiwen USB pi poki nimi pi nasin poki FAT32 en pana e poki palisa ni lon ilo C64 Maxi. ni la sina ken pilin e nena wawa anu nena SHIFT en "←" li ken open e lipu Media en pilin e nena ENTER lon poki .d64.<br>
sina kepeken e ilo Kamato 64 sama sama la... mi ken ala pana e sona pona tawa sina :p. kin la sina ken [sitelen e ona](BASICfuck.bas "nimi wawa pi ilo BASICfuck.") kepeken ilo sitelen.

poki .d64 li lon la sina ken kama jo e ijo lon ona kepeken ni:
```BASIC
LOAD"BF-REPL",8
```

ni anu sina pana e poki .prg kin lon ilo lon tenpo pini la o sitelen e ni:
```BASIC
RUN
```
en, o pilin pona tan nasin sina sin suli pi toki Brainfuck.

## lipu wawa pana.
#### li toki e "Hello World" kepeken nimi "@".
```brainfuck
@>)@-[<+>--]<--.---.+++++++..+++.                      li toki e "HELLO"
>(@[-<->]<.>)@[-<+>]<.--------.+++.------.--------.    li toki e " WORLD"
```

lipu ni li kepeken e ni: tenpo mute la poki nanpa 2 pi nanpa 1 pi ilo Kamato 64 li jo e 47 en 55.<br>
taso, o sona e ni: nanpa ni li ken ante. toki pona la ken la ni li pali ala lon tenpo ali.

#### li ante e kule pi selo pi ilo pana pi ilo nanpa.
```brainfuck
-[->++++++++++[-)))))))))))))))))))))]<]--[--((]+++[-(((((](    li pali e ni: poki nanpa pi ilo Kamato 64 pi tenpo ni li $D020 | ni li jo e kule pi selo pi ilo pana | li wile e tenpo mute
+[>*+<]                                                         li ante e kule pi ilo pana
```

#### li toki e sitelen sina / li ken e ni: sina ante e sitelen lon ilo pana.
```brainfuck
+[;.]
```

#### li toki e sitelen sina lon nasin tan pini tawa open.
```brainfuck
+[;.[->+>+<<]>>[-<<+>>]<-------------]<<[.[-]<]
```

o sitelen e nimi o pilin e nena ENTER. sina sitelen la ona li toki e sitelen sina. ona li wile e tenpo mute.

#### li pali e nasin mute nasa pi "nasin ala".
```brainfuck
->+++++[-<---------->]<     li pali e ni: poki nanpa pi tenpo ni li jo e 205 | ni li nanpa tawa sitelen "\"
[>@)[<+>>]<<.>[<->>]<<<]    li pali e nasin mute nasa | poki nanpa pi ilo Kamato 64 pi tenpo ni li 0 la li sitelen e "\" | ni ala la li sitelen e "/"
```

lipu ni pi suli mute li sitelen sin lon toki Brainfuck pi ilo BASICfuck li kepeken e nanpa lon poki nanpa pi ilo Kamato 64 tawa pali e nanpa ante pi "nasin ala". poki pi tenpo ni li jo e 0 la ona li sitelen e "\\". ni ala la ona li sitelen e "/".<br>
tenpo mute la nanpa ni li "jo e nasin ala". taso, kin la sina lukin e ma suli pi "\\" taso anu "/" taso.

## lupa tawa lipu ante.
pana pi ilo BASICfuck:<br>
https://odysee.com/BASICfuck-Demonstration---a-Brainfuck-REPL-for-the-Commodore-64:e0e5115474fe6334db53f93302e35adb86c45e6a?r=HYroMZaqrVN4gL5oSJ35gcTgt3K56r39
