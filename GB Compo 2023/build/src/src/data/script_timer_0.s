.module script_timer_0

.include "vm.i"
.include "data/game_globals.i"

.globl _plat_dash

.area _CODE_255

.LOCAL_TMP0_INPUT = -4
.LOCAL_ACTOR = -4

___bank_script_timer_0 = 255
.globl ___bank_script_timer_0

_script_timer_0::
        VM_RESERVE              4

        ; If Input
        VM_GET_INT8             .LOCAL_TMP0_INPUT, ^/(_joypads + 1)/
        VM_RPN
            .R_REF      .LOCAL_TMP0_INPUT
            .R_INT8     64
            .R_OPERATOR .B_AND
            .R_STOP
        VM_IF_CONST             .NE, .ARG0, 0, 1$, 1

        VM_JUMP                 2$
1$:
        ; Switch Variable
        VM_SWITCH               VAR_ACTIVESKILL, 4, 0
        .dw 1, 3$
        .dw 2, 4$
        .dw 3, 5$
        .dw 4, 6$

        VM_JUMP                 7$
        ; case 1:
3$:
        ; Variable Set To True
        VM_SET_CONST            VAR_ACTIVESKILL, 1

        ; Engine Field Set To Value
        VM_SET_CONST_INT8       _plat_dash, 0

        VM_JUMP                 7$
        ; case 2:
4$:
        ; Variable Set To Value
        VM_SET_CONST            VAR_ACTIVESKILL, 2

        ; Engine Field Set To Value
        VM_SET_CONST_INT8       _plat_dash, 0

        VM_JUMP                 7$
        ; case 3:
5$:
        ; Variable Set To Value
        VM_SET_CONST            VAR_ACTIVESKILL, 3

        ; Engine Field Set To Value
        VM_SET_CONST_INT8       _plat_dash, 2

        VM_JUMP                 7$
        ; case 4:
6$:
        ; Variable Set To Value
        VM_SET_CONST            VAR_ACTIVESKILL, 4

        ; Engine Field Set To Value
        VM_SET_CONST_INT8       _plat_dash, 0

        VM_JUMP                 7$
7$:

        ; Switch Variable
        VM_SWITCH               VAR_ACTIVESKILL, 4, 0
        .dw 1, 8$
        .dw 2, 9$
        .dw 3, 10$
        .dw 4, 11$

        ; Actor Hide
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 1

        VM_JUMP                 12$
        ; case 1:
8$:
        ; Actor Show
        VM_SET_CONST            .LOCAL_ACTOR, 3
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 0

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 3

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 0
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        VM_JUMP                 12$
        ; case 2:
9$:
        ; Actor Show
        VM_SET_CONST            .LOCAL_ACTOR, 3
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 0

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 3

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        VM_JUMP                 12$
        ; case 3:
10$:
        ; Actor Show
        VM_SET_CONST            .LOCAL_ACTOR, 3
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 0

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 3

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 2
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        VM_JUMP                 12$
        ; case 4:
11$:
        ; Actor Show
        VM_SET_CONST            .LOCAL_ACTOR, 3
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 0

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 3

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 3
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        VM_JUMP                 12$
12$:

2$:

        ; Stop Script
        VM_STOP
