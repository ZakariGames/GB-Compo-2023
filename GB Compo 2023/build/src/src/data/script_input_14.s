.module script_input_14

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_14 = 255
.globl ___bank_script_input_14

_script_input_14::
        ; Stop Script
        VM_STOP
