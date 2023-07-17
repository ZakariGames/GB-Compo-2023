.module script_5

.include "vm.i"
.include "data/game_globals.i"

.globl _fade_frames_per_step

.area _CODE_255

.SCRIPT_ARG_INDIRECT_0_VARIABLE = -7
.SCRIPT_ARG_1_ACTOR = -8
.LOCAL_ACTOR = -4

___bank_script_5 = 255
.globl ___bank_script_5

_script_5::
        VM_RESERVE              4

        ; Variable 2 = VAR_PLAYERHEALTH-$V0$
        VM_RPN
            .R_REF      VAR_PLAYERHEALTH
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_0_VARIABLE
            .R_OPERATOR .SUB
            .R_STOP
        VM_SET                  VAR_PLAYERHEALTH, .ARG0
        VM_POP                  1

        ; Actor Set Active
        VM_SET                  .LOCAL_ACTOR, .SCRIPT_ARG_1_ACTOR

        ; Actor Set Animation Frame To Variable
        VM_SET                  ^/(.LOCAL_ACTOR + 1)/, VAR_PLAYERHEALTH
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        ; If Variable .LT Value
        VM_IF_CONST             .LT, VAR_PLAYERHEALTH, 0, 1$, 0
        VM_JUMP                 2$
1$:
        ; Pop Scene State
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SCENE_POP

        ; Stop Script
        VM_STOP
2$:

        VM_RESERVE              -4
        VM_RET_FAR_N            2
