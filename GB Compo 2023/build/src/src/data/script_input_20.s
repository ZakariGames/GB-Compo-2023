.module script_input_20

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.SCRIPT_ARG_0_ACTOR = -3

___bank_script_input_20 = 255
.globl ___bank_script_input_20

_script_input_20::
        ; Stop Script
        VM_STOP
