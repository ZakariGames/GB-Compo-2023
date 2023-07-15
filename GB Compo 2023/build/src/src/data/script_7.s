.module script_7

.include "vm.i"
.include "data/game_globals.i"

.globl b_camera_shake_frames, _camera_shake_frames

.area _CODE_255

.SCRIPT_ARG_0_ACTOR = -9
.LOCAL_TMP0_INPUT = -4
.LOCAL_TMP1_CAMERA_SHAKE_ARGS = -4
.LOCAL_ACTOR = -4
.LOCAL_TMP3_CAMERA_SHAKE_ARGS = -6
.LOCAL_TMP4_CAMERA_SHAKE_ARGS = -6
.LOCAL_TMP5_CAMERA_SHAKE_ARGS = -6
.LOCAL_TMP6_CAMERA_SHAKE_ARGS = -6
.LOCAL_TMP7_CAMERA_SHAKE_ARGS = -6

___bank_script_7 = 255
.globl ___bank_script_7

_script_7::
        VM_RESERVE              6

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
        VM_CONTEXT_PREPARE      3, ___bank_script_input_20, _script_input_20
        VM_INPUT_ATTACH         32, ^/(3 | .OVERRIDE_DEFAULT)/

        ; Timer Start
        VM_TIMER_PREPARE        1, ___bank_script_timer_2, _script_timer_2
        VM_TIMER_SET            1, 2

2$:

        ; Sound Play Crash
        VM_SFX_PLAY             ___bank_sound_legacy_3, _sound_legacy_3, ___mute_mask_sound_legacy_3, .SFX_PRIORITY_NORMAL

        ; Camera Shake
        VM_SET_CONST            .LOCAL_TMP1_CAMERA_SHAKE_ARGS, 6
        VM_SET_CONST            ^/(.LOCAL_TMP1_CAMERA_SHAKE_ARGS + 1)/, .CAMERA_SHAKE_X
        VM_INVOKE               b_camera_shake_frames, _camera_shake_frames, 0, .LOCAL_TMP1_CAMERA_SHAKE_ARGS

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Launch Projectile In Angle
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    15
            .R_INT16    .PROJECTILE_ANIM_ONCE
            .R_STOP
        VM_PROJECTILE_LAUNCH    4, .ARG3
        VM_POP                  4

        ; Sound Play Crash
        VM_SFX_PLAY             ___bank_sound_legacy_3, _sound_legacy_3, ___mute_mask_sound_legacy_3, .SFX_PRIORITY_NORMAL

        ; Camera Shake
        VM_SET_CONST            .LOCAL_TMP3_CAMERA_SHAKE_ARGS, 6
        VM_SET_CONST            ^/(.LOCAL_TMP3_CAMERA_SHAKE_ARGS + 1)/, .CAMERA_SHAKE_X
        VM_INVOKE               b_camera_shake_frames, _camera_shake_frames, 0, .LOCAL_TMP3_CAMERA_SHAKE_ARGS

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Launch Projectile In Angle
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    25
            .R_INT16    .PROJECTILE_ANIM_ONCE
            .R_STOP
        VM_PROJECTILE_LAUNCH    4, .ARG3
        VM_POP                  4

        ; Sound Play Crash
        VM_SFX_PLAY             ___bank_sound_legacy_3, _sound_legacy_3, ___mute_mask_sound_legacy_3, .SFX_PRIORITY_NORMAL

        ; Camera Shake
        VM_SET_CONST            .LOCAL_TMP4_CAMERA_SHAKE_ARGS, 6
        VM_SET_CONST            ^/(.LOCAL_TMP4_CAMERA_SHAKE_ARGS + 1)/, .CAMERA_SHAKE_X
        VM_INVOKE               b_camera_shake_frames, _camera_shake_frames, 0, .LOCAL_TMP4_CAMERA_SHAKE_ARGS

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Launch Projectile In Angle
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    35
            .R_INT16    .PROJECTILE_ANIM_ONCE
            .R_STOP
        VM_PROJECTILE_LAUNCH    4, .ARG3
        VM_POP                  4

        ; Sound Play Crash
        VM_SFX_PLAY             ___bank_sound_legacy_3, _sound_legacy_3, ___mute_mask_sound_legacy_3, .SFX_PRIORITY_NORMAL

        ; Camera Shake
        VM_SET_CONST            .LOCAL_TMP5_CAMERA_SHAKE_ARGS, 6
        VM_SET_CONST            ^/(.LOCAL_TMP5_CAMERA_SHAKE_ARGS + 1)/, .CAMERA_SHAKE_X
        VM_INVOKE               b_camera_shake_frames, _camera_shake_frames, 0, .LOCAL_TMP5_CAMERA_SHAKE_ARGS

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Launch Projectile In Angle
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    45
            .R_INT16    .PROJECTILE_ANIM_ONCE
            .R_STOP
        VM_PROJECTILE_LAUNCH    4, .ARG3
        VM_POP                  4

        ; Sound Play Crash
        VM_SFX_PLAY             ___bank_sound_legacy_3, _sound_legacy_3, ___mute_mask_sound_legacy_3, .SFX_PRIORITY_NORMAL

        ; Camera Shake
        VM_SET_CONST            .LOCAL_TMP6_CAMERA_SHAKE_ARGS, 6
        VM_SET_CONST            ^/(.LOCAL_TMP6_CAMERA_SHAKE_ARGS + 1)/, .CAMERA_SHAKE_X
        VM_INVOKE               b_camera_shake_frames, _camera_shake_frames, 0, .LOCAL_TMP6_CAMERA_SHAKE_ARGS

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Launch Projectile In Angle
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    55
            .R_INT16    .PROJECTILE_ANIM_ONCE
            .R_STOP
        VM_PROJECTILE_LAUNCH    4, .ARG3
        VM_POP                  4

        ; Sound Play Crash
        VM_SFX_PLAY             ___bank_sound_legacy_3, _sound_legacy_3, ___mute_mask_sound_legacy_3, .SFX_PRIORITY_NORMAL

        ; Camera Shake
        VM_SET_CONST            .LOCAL_TMP7_CAMERA_SHAKE_ARGS, 6
        VM_SET_CONST            ^/(.LOCAL_TMP7_CAMERA_SHAKE_ARGS + 1)/, .CAMERA_SHAKE_X
        VM_INVOKE               b_camera_shake_frames, _camera_shake_frames, 0, .LOCAL_TMP7_CAMERA_SHAKE_ARGS

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Launch Projectile In Angle
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    65
            .R_INT16    .PROJECTILE_ANIM_ONCE
            .R_STOP
        VM_PROJECTILE_LAUNCH    4, .ARG3
        VM_POP                  4

        ; Actor Set Active
        VM_SET                  .LOCAL_ACTOR, .SCRIPT_ARG_0_ACTOR

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 0
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        ; Actor Set Active
        VM_SET                  .LOCAL_ACTOR, .SCRIPT_ARG_0_ACTOR

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   .LOCAL_ACTOR, STATE_DEFAULT

        VM_RESERVE              -6
        VM_RET_FAR_N            1
