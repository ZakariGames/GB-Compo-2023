.module script_11

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.SCRIPT_ARG_0_ACTOR = -7
.LOCAL_ACTOR = -4

___bank_script_11 = 255
.globl ___bank_script_11

_script_11::
        VM_RESERVE              4

        ; Variable Set To Value
        VM_SET_CONST            VAR_BULLETCOUNT, 6

        ; Actor Set Active
        VM_SET                  .LOCAL_ACTOR, .SCRIPT_ARG_0_ACTOR

        ; Actor Set Animation Frame To Variable
        VM_SET                  ^/(.LOCAL_ACTOR + 1)/, VAR_BULLETCOUNT
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        VM_RESERVE              -4
        VM_RET_FAR_N            1
