.module script_timer_1

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames

.area _CODE_255

.LOCAL_TMP0_INPUT = -4
.LOCAL_ACTOR = -4
.LOCAL_TMP2_WAIT_ARGS = -5
.LOCAL_TMP3_WAIT_ARGS = -5
.LOCAL_TMP4_WAIT_ARGS = -5
.LOCAL_TMP5_WAIT_ARGS = -5
.LOCAL_TMP6_INPUT = -5
.LOCAL_TMP7_WAIT_ARGS = -5
.LOCAL_TMP8_WAIT_ARGS = -5
.LOCAL_TMP9_INPUT = -5
.LOCAL_TMP10_WAIT_ARGS = -5
.LOCAL_TMP11_WAIT_ARGS = -5
.LOCAL_TMP12_INPUT = -5
.LOCAL_TMP13_WAIT_ARGS = -5
.LOCAL_TMP14_WAIT_ARGS = -5
.LOCAL_TMP15_INPUT = -5
.LOCAL_TMP16_WAIT_ARGS = -5
.LOCAL_TMP17_WAIT_ARGS = -5

___bank_script_timer_1 = 255
.globl ___bank_script_timer_1

_script_timer_1::
        VM_RESERVE              5

        ; If Input
        VM_GET_INT8             .LOCAL_TMP0_INPUT, ^/(_joypads + 1)/
        VM_RPN
            .R_REF      .LOCAL_TMP0_INPUT
            .R_INT8     8
            .R_OPERATOR .B_AND
            .R_STOP
        VM_IF_CONST             .NE, .ARG0, 0, 1$, 1

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   .LOCAL_ACTOR, STATE_DEFAULT

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 6
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        ; Input Script Attach
        VM_CONTEXT_PREPARE      3, ___bank_script_input_15, _script_input_15
        VM_INPUT_ATTACH         32, ^/(3 | .OVERRIDE_DEFAULT)/

        VM_JUMP                 2$
1$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   .LOCAL_ACTOR, STATE_CINDERED

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 0
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        ; Sound Play Tone
        VM_SFX_PLAY             ___bank_sound_legacy_4, _sound_legacy_4, ___mute_mask_sound_legacy_4, .SFX_PRIORITY_NORMAL

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP2_WAIT_ARGS, 6
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP2_WAIT_ARGS

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP3_WAIT_ARGS, 18
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP3_WAIT_ARGS

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        ; Sound Play Tone
        VM_SFX_PLAY             ___bank_sound_legacy_4, _sound_legacy_4, ___mute_mask_sound_legacy_4, .SFX_PRIORITY_NORMAL

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP4_WAIT_ARGS, 6
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP4_WAIT_ARGS

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP5_WAIT_ARGS, 18
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP5_WAIT_ARGS

        ; If Input
        VM_GET_INT8             .LOCAL_TMP6_INPUT, ^/(_joypads + 1)/
        VM_RPN
            .R_REF      .LOCAL_TMP6_INPUT
            .R_INT8     8
            .R_OPERATOR .B_AND
            .R_STOP
        VM_IF_CONST             .NE, .ARG0, 0, 3$, 1

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   .LOCAL_ACTOR, STATE_DEFAULT

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 6
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        ; Input Script Attach
        VM_CONTEXT_PREPARE      3, ___bank_script_input_16, _script_input_16
        VM_INPUT_ATTACH         32, ^/(3 | .OVERRIDE_DEFAULT)/

        VM_JUMP                 4$
3$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 2
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        ; Sound Play Tone
        VM_SFX_PLAY             ___bank_sound_legacy_4, _sound_legacy_4, ___mute_mask_sound_legacy_4, .SFX_PRIORITY_NORMAL

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP7_WAIT_ARGS, 6
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP7_WAIT_ARGS

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP8_WAIT_ARGS, 18
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP8_WAIT_ARGS

        ; If Input
        VM_GET_INT8             .LOCAL_TMP9_INPUT, ^/(_joypads + 1)/
        VM_RPN
            .R_REF      .LOCAL_TMP9_INPUT
            .R_INT8     8
            .R_OPERATOR .B_AND
            .R_STOP
        VM_IF_CONST             .NE, .ARG0, 0, 5$, 1

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   .LOCAL_ACTOR, STATE_DEFAULT

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 6
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        ; Input Script Attach
        VM_CONTEXT_PREPARE      3, ___bank_script_input_17, _script_input_17
        VM_INPUT_ATTACH         32, ^/(3 | .OVERRIDE_DEFAULT)/

        VM_JUMP                 6$
5$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 3
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        ; Sound Play Tone
        VM_SFX_PLAY             ___bank_sound_legacy_4, _sound_legacy_4, ___mute_mask_sound_legacy_4, .SFX_PRIORITY_NORMAL

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP10_WAIT_ARGS, 6
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP10_WAIT_ARGS

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP11_WAIT_ARGS, 18
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP11_WAIT_ARGS

        ; If Input
        VM_GET_INT8             .LOCAL_TMP12_INPUT, ^/(_joypads + 1)/
        VM_RPN
            .R_REF      .LOCAL_TMP12_INPUT
            .R_INT8     8
            .R_OPERATOR .B_AND
            .R_STOP
        VM_IF_CONST             .NE, .ARG0, 0, 7$, 1

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   .LOCAL_ACTOR, STATE_DEFAULT

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 6
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        ; Input Script Attach
        VM_CONTEXT_PREPARE      3, ___bank_script_input_18, _script_input_18
        VM_INPUT_ATTACH         32, ^/(3 | .OVERRIDE_DEFAULT)/

        VM_JUMP                 8$
7$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 4
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        ; Sound Play Tone
        VM_SFX_PLAY             ___bank_sound_legacy_4, _sound_legacy_4, ___mute_mask_sound_legacy_4, .SFX_PRIORITY_NORMAL

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP13_WAIT_ARGS, 6
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP13_WAIT_ARGS

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP14_WAIT_ARGS, 18
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP14_WAIT_ARGS

        ; If Input
        VM_GET_INT8             .LOCAL_TMP15_INPUT, ^/(_joypads + 1)/
        VM_RPN
            .R_REF      .LOCAL_TMP15_INPUT
            .R_INT8     8
            .R_OPERATOR .B_AND
            .R_STOP
        VM_IF_CONST             .NE, .ARG0, 0, 9$, 1

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   .LOCAL_ACTOR, STATE_DEFAULT

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 6
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        ; Input Script Attach
        VM_CONTEXT_PREPARE      3, ___bank_script_input_19, _script_input_19
        VM_INPUT_ATTACH         32, ^/(3 | .OVERRIDE_DEFAULT)/

        VM_JUMP                 10$
9$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 5
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        ; Sound Play Tone
        VM_SFX_PLAY             ___bank_sound_legacy_4, _sound_legacy_4, ___mute_mask_sound_legacy_4, .SFX_PRIORITY_NORMAL

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP16_WAIT_ARGS, 6
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP16_WAIT_ARGS

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP17_WAIT_ARGS, 18
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP17_WAIT_ARGS

        ; Call Script: Cinder Shot
        VM_PUSH_CONST           5 ; Actor 0
        VM_CALL_FAR             ___bank_script_7, _script_7

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   .LOCAL_ACTOR, STATE_DEFAULT

        ; Variable Set To Value
        VM_SET_CONST            VAR_BULLETCOUNT, 6

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Animation Frame To Variable
        VM_SET                  ^/(.LOCAL_ACTOR + 1)/, VAR_BULLETCOUNT
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        ; Input Script Attach
        VM_CONTEXT_PREPARE      3, ___bank_script_input_27, _script_input_27
        VM_INPUT_ATTACH         32, ^/(3 | .OVERRIDE_DEFAULT)/

10$:

8$:

6$:

4$:

2$:

        ; Timer Disable
        VM_TIMER_STOP           1
        ; Stop Script
        VM_STOP
