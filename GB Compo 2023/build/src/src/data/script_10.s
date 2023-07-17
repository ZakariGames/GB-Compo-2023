.module script_10

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.SCRIPT_ARG_INDIRECT_0_VARIABLE = -7
.SCRIPT_ARG_1_ACTOR = -8
.LOCAL_ACTOR = -4

___bank_script_10 = 255
.globl ___bank_script_10

_script_10::
        VM_RESERVE              4

        ; Variable 9 = VAR_BULLETCOUNT-$V0$
        VM_RPN
            .R_REF      VAR_BULLETCOUNT
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_0_VARIABLE
            .R_OPERATOR .SUB
            .R_STOP
        VM_SET                  VAR_BULLETCOUNT, .ARG0
        VM_POP                  1

        ; Actor Set Active
        VM_SET                  .LOCAL_ACTOR, .SCRIPT_ARG_1_ACTOR

        ; Actor Set Animation Frame To Variable
        VM_SET                  ^/(.LOCAL_ACTOR + 1)/, VAR_BULLETCOUNT
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        ; If Variable .EQ Value
        VM_IF_CONST             .EQ, VAR_BULLETCOUNT, 0, 1$, 0
        VM_JUMP                 2$
1$:
2$:

        VM_RESERVE              -4
        VM_RET_FAR_N            2
