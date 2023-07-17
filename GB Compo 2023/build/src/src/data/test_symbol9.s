.module test_symbol9

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_test_symbol9 = 255
.globl ___bank_test_symbol9

_test_symbol9::
        ; Variable Set To True
        VM_SET_CONST            VAR_IMMUNITY, 1

        ; Stop Script
        VM_STOP
