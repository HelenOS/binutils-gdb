. ${srcdir}/emulparams/aarch64elf.sh

unset EMBEDDED
unset STACK_ADDR

# Ensure each PLT entry is aligned to a cache line.
PLT=".plt          ${RELOCATING-0} : ALIGN(16) { *(.plt)${IREL_IN_PLT+ *(.iplt)} }"
