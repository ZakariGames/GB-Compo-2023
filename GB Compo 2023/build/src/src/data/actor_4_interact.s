.module actor_4_interact

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _pl_vel_y, b_camera_shake_frames, _camera_shake_frames

.area _CODE_255

.LOCAL_TMP0_PARAM0_VALUE = -4
.LOCAL_TMP1_ARG = -4
.LOCAL_ACTOR = -4
.LOCAL_TMP8_WAIT_ARGS = -4
.LOCAL_TMP9_PARAM0_VALUE = -4
.LOCAL_TMP10_WAIT_ARGS = -4
.LOCAL_TMP3_WAIT_ARGS = -6
.LOCAL_TMP4_CAMERA_SHAKE_ARGS = -6
.LOCAL_TMP5_WAIT_ARGS = -6
.LOCAL_TMP6_WAIT_ARGS = -6
.LOCAL_TMP7_WAIT_ARGS = -6

___bank_actor_4_interact = 255
.globl ___bank_actor_4_interact

_actor_4_interact::
        VM_RESERVE              6

        ; If Parameter 0 Equals 0
        VM_GET_TLOCAL           .LOCAL_TMP0_PARAM0_VALUE, 0
        VM_IF_CONST             .EQ, .LOCAL_TMP0_PARAM0_VALUE, 0, 1$, 0
        VM_JUMP                 2$
1$:
        ; If Variable True
        VM_IF_CONST             .GT, VAR_IMMUNITY, 0, 3$, 0
        ; Variable Set To True
        VM_SET_CONST            VAR_IMMUNITY, 1

        ; Call Script: Decrease Health
        VM_SET_CONST            .LOCAL_TMP1_ARG, 1
        VM_PUSH_CONST           1 ; Actor 0
        VM_PUSH_REFERENCE       ^/(.LOCAL_TMP1_ARG - 1)/ ; Variable V0
        VM_CALL_FAR             ___bank_script_5, _script_5

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Animation Frame To Variable
        VM_SET                  ^/(.LOCAL_ACTOR + 1)/, VAR_PLAYERHEALTH
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        ; Sound Play Beep
        VM_SFX_PLAY             ___bank_sound_legacy_5, _sound_legacy_5, ___mute_mask_sound_legacy_5, .SFX_PRIORITY_NORMAL

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP3_WAIT_ARGS, 6
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP3_WAIT_ARGS

        ; Player Bounce
        VM_SET_CONST_INT16      _pl_vel_y, -8192

        ; Camera Shake
        VM_SET_CONST            .LOCAL_TMP4_CAMERA_SHAKE_ARGS, 12
        VM_SET_CONST            ^/(.LOCAL_TMP4_CAMERA_SHAKE_ARGS + 1)/, .CAMERA_SHAKE_X
        VM_INVOKE               b_camera_shake_frames, _camera_shake_frames, 0, .LOCAL_TMP4_CAMERA_SHAKE_ARGS

        ; Actor Hide
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 1

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP5_WAIT_ARGS, 12
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP5_WAIT_ARGS

        ; Actor Show
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 0

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP6_WAIT_ARGS, 12
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP6_WAIT_ARGS

        ; Actor Hide
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 1

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP7_WAIT_ARGS, 12
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP7_WAIT_ARGS

        ; Actor Show
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 0

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP8_WAIT_ARGS, 18
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP8_WAIT_ARGS

        ; Variable Set To False
        VM_SET_CONST            VAR_IMMUNITY, 0

        VM_JUMP                 4$
3$:
4$:

        ; Stop Script
        VM_STOP
2$:

        ; If Parameter 0 Equals 8
        VM_GET_TLOCAL           .LOCAL_TMP9_PARAM0_VALUE, 0
        VM_IF_CONST             .EQ, .LOCAL_TMP9_PARAM0_VALUE, 8, 5$, 0
        VM_JUMP                 6$
5$:
        ; Sound Play Tone
        VM_SFX_PLAY             ___bank_sound_legacy_6, _sound_legacy_6, ___mute_mask_sound_legacy_6, .SFX_PRIORITY_NORMAL

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP10_WAIT_ARGS, 6
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP10_WAIT_ARGS

        ; Stop Script
        VM_STOP
6$:

        ; Stop Script
        VM_STOP
