#objdump: -rst -mips16
#name: MIPS16 reloc 2
#as: -mips16
#source: mips16-f.s

# Check MIPS16 reloc processing

.*: +file format elf.*mips.*

SYMBOL TABLE:
0+0000000 l    d  \.text	0+0000000 
0+0000000 l    d  \.data	0+0000000 
0+0000000 l    d  \.bss	0+0000000 
0+0000002 l       \.text	0+0000000 0xf0 l1
0+0000000 l    d  foo	0+0000000 
0+0000000 l    d  \.reginfo	0+0000000 
0+0000000 l    d  \.(mdebug|pdr)	0+0000000 


RELOCATION RECORDS FOR \[foo\]:
OFFSET [ ]+ TYPE              VALUE 
0+0000000 R_MIPS_32         l1


Contents of section \.text:
 0000 00650065 00650065 00650065 00650065  .*
Contents of section \.data:
Contents of section \.reginfo:
 0000 01000000 00000000 00000000 00000000  .*
 0010 00000000 00000000                    .*
Contents of section \.(mdebug|pdr):
#...
Contents of section foo:
 0000 03000000 00000000 00000000 00000000  .*
