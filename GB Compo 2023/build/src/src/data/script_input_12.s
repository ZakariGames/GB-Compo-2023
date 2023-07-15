.module script_input_12

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_TMP0_INPUT = -1

___bank_script_input_12 = 255
.globl ___bank_script_input_12

_script_input_12::
        VM_RESERVE              1

        ; If Variable True
        VM_IF_CONST             .GT, VAR_TIMESTOPPED, 0, 1$, 0
        ; If Input
        VM_GET_INT8             .LOCAL_TMP0_INPUT, ^/(_joypads + 1)/
        VM_RPN
            .R_REF      .LOCAL_TMP0_INPUT
            .R_INT8     32
            .R_OPERATOR .B_AND
            .R_STOP
        VM_IF_CONST             .NE, .ARG0, 0, 3$, 1

        VM_JUMP                 4$
3$:
        ; Call Script: Stop Time
        VM_CALL_FAR             ___bank_script_0, _script_0

4$:

        VM_JUMP                 2$
1$:
2$:

        ; Stop Script
        VM_STOP
