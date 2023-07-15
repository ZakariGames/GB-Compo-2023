.module trigger_2_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_trigger_2_interact = 255
.globl ___bank_trigger_2_interact

_trigger_2_interact::
        VM_LOCK

        ; Input Script Attach
        VM_CONTEXT_PREPARE      4, ___bank_script_input_3, _script_input_3
        VM_INPUT_ATTACH         16, 4

        ; Stop Script
        VM_STOP
