.module script_input_28

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_28 = 255
.globl ___bank_script_input_28

_script_input_28::
        ; Call Script: Ground Shot
        VM_PUSH_CONST           5 ; Actor 0
        VM_CALL_FAR             ___bank_script_8, _script_8

        ; Stop Script
        VM_STOP
