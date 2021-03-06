# If you change this file, please also look at files which source this one:
# elf32ltsmipn32.sh

. ${srcdir}/emulparams/elf32bmipn32.sh
OUTPUT_FORMAT="elf32-ntradbigmips"
BIG_OUTPUT_FORMAT="elf32-ntradbigmips"
LITTLE_OUTPUT_FORMAT="elf32-ntradlittlemips"

unset EXECUTABLE_SYMBOLS
unset WRITABLE_RODATA

# Magic sections.
OTHER_TEXT_SECTIONS='*(.mips16.fn.*) *(.mips16.call.*)'
OTHER_SECTIONS='
  .gptab.sdata : { *(.gptab.data) *(.gptab.sdata) }
  .gptab.sbss : { *(.gptab.bss) *(.gptab.sbss) }
'
