.module test_symbol11

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_test_symbol11 = 255
.globl ___bank_test_symbol11

_test_symbol11::
        ; Variable Set To False
        VM_SET_CONST            VAR_IMMUNITY, 0

        ; Stop Script
        VM_STOP
