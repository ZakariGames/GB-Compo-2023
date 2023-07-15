.module script_input_3

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_3 = 255
.globl ___bank_script_input_3

_script_input_3::
        ; Call Script: Save
        VM_PUSH_CONST           VAR_S0T1_LOCAL_0 ; Variable V0
        VM_CALL_FAR             ___bank_script_1, _script_1

        ; Stop Script
        VM_STOP
