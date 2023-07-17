.module script_input_13

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_TMP0_INPUT = -1

___bank_script_input_13 = 255
.globl ___bank_script_input_13

_script_input_13::
        VM_RESERVE              1

        ; Call Script: Set Bullet Count
        VM_PUSH_CONST           5 ; Actor 0
        VM_CALL_FAR             ___bank_script_11, _script_11

        ; If Input
        VM_GET_INT8             .LOCAL_TMP0_INPUT, ^/(_joypads + 1)/
        VM_RPN
            .R_REF      .LOCAL_TMP0_INPUT
            .R_INT8     8
            .R_OPERATOR .B_AND
            .R_STOP
        VM_IF_CONST             .NE, .ARG0, 0, 1$, 1

        VM_JUMP                 2$
1$:
        ; Input Script Attach
        VM_CONTEXT_PREPARE      3, ___bank_script_input_14, _script_input_14
        VM_INPUT_ATTACH         32, ^/(3 | .OVERRIDE_DEFAULT)/

        ; Timer Start
        VM_TIMER_PREPARE        1, ___bank_script_timer_1, _script_timer_1
        VM_TIMER_SET            1, 2

2$:

        ; Stop Script
        VM_STOP
