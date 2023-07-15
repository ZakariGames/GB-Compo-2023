.module script_input_29

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_TMP0_INPUT = -1

___bank_script_input_29 = 255
.globl ___bank_script_input_29

_script_input_29::
        VM_RESERVE              1

        ; If Input
        VM_GET_INT8             .LOCAL_TMP0_INPUT, ^/(_joypads + 1)/
        VM_RPN
            .R_REF      .LOCAL_TMP0_INPUT
            .R_INT8     8
            .R_OPERATOR .B_AND
            .R_STOP
        VM_IF_CONST             .NE, .ARG0, 0, 1$, 1

        ; Switch Variable
        VM_SWITCH               VAR_ACTIVESKILL, 4, 0
        .dw 1, 3$
        .dw 2, 4$
        .dw 3, 5$
        .dw 4, 6$

        VM_JUMP                 7$
        ; case 1:
3$:
        VM_JUMP                 7$
        ; case 2:
4$:
        VM_JUMP                 7$
        ; case 3:
5$:
        VM_JUMP                 7$
        ; case 4:
6$:
        VM_JUMP                 7$
7$:

        VM_JUMP                 2$
1$:
        ; Call Script: Melee Attack
        VM_CALL_FAR             ___bank_script_3, _script_3

2$:

        ; Stop Script
        VM_STOP
