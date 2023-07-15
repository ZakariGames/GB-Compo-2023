.module script_input_30

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _plat_dash

.area _CODE_255

.LOCAL_TMP0_WAIT_ARGS = -4
.LOCAL_ACTOR = -4
.LOCAL_TMP2_INPUT = -4

___bank_script_input_30 = 255
.globl ___bank_script_input_30

_script_input_30::
        VM_RESERVE              4

        ; Sound Play Tone
        VM_SFX_PLAY             ___bank_sound_legacy_2, _sound_legacy_2, ___mute_mask_sound_legacy_2, .SFX_PRIORITY_NORMAL

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP0_WAIT_ARGS, 6
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP0_WAIT_ARGS

        ; Variable Increment By 1
        VM_RPN
            .R_REF      VAR_ACTIVESKILL
            .R_INT8     1
            .R_OPERATOR .ADD
            .R_STOP
        VM_SET                  VAR_ACTIVESKILL, .ARG0
        VM_POP                  1

        ; If Variable .GT Value
        VM_IF_CONST             .GT, VAR_ACTIVESKILL, 4, 1$, 0
        VM_JUMP                 2$
1$:
        ; Variable Set To True
        VM_SET_CONST            VAR_ACTIVESKILL, 1

2$:

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
        VM_SET_CONST            .LOCAL_ACTOR, 2
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 0

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 0
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        VM_JUMP                 12$
        ; case 2:
9$:
        ; Actor Show
        VM_SET_CONST            .LOCAL_ACTOR, 2
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 0

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        VM_JUMP                 12$
        ; case 3:
10$:
        ; Actor Show
        VM_SET_CONST            .LOCAL_ACTOR, 2
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 0

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 2
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        VM_JUMP                 12$
        ; case 4:
11$:
        ; Actor Show
        VM_SET_CONST            .LOCAL_ACTOR, 2
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 0

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 3
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        VM_JUMP                 12$
12$:

        ; If Input
        VM_GET_INT8             .LOCAL_TMP2_INPUT, ^/(_joypads + 1)/
        VM_RPN
            .R_REF      .LOCAL_TMP2_INPUT
            .R_INT8     64
            .R_OPERATOR .B_AND
            .R_STOP
        VM_IF_CONST             .NE, .ARG0, 0, 13$, 1

        VM_JUMP                 14$
13$:
        ; Timer Start
        VM_TIMER_PREPARE        1, ___bank_script_timer_3, _script_timer_3
        VM_TIMER_SET            1, 4

14$:

        ; Stop Script
        VM_STOP
