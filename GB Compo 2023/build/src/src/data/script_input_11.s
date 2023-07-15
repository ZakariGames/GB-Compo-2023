.module script_input_11

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_11 = 255
.globl ___bank_script_input_11

_script_input_11::
        ; Call Script: Bird AI
        VM_PUSH_CONST           4 ; Actor 0
        VM_CALL_FAR             ___bank_script_9, _script_9

        ; Stop Script
        VM_STOP
