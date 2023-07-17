.module script_input_23

.include "vm.i"
.include "data/game_globals.i"

.globl b_camera_shake_frames, _camera_shake_frames

.area _CODE_255

.SCRIPT_ARG_0_ACTOR = -7
.LOCAL_ACTOR = -4
.LOCAL_TMP1_CAMERA_SHAKE_ARGS = -4
.LOCAL_TMP2_ARG = -4

___bank_script_input_23 = 255
.globl ___bank_script_input_23

_script_input_23::
        VM_RESERVE              4

        ; If Variable .GT Value
        VM_IF_CONST             .GT, VAR_BULLETCOUNT, 0, 1$, 0
        VM_JUMP                 2$
1$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Launch Projectile In Source Actor Direction
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    0
            .R_INT16    .PROJECTILE_ANIM_ONCE
            .R_STOP
        VM_ACTOR_GET_ANGLE      ^/(.LOCAL_ACTOR - 4)/, .ARG1
        VM_PROJECTILE_LAUNCH    0, .ARG3
        VM_POP                  4

        ; Sound Play Crash
        VM_SFX_PLAY             ___bank_sound_legacy_3, _sound_legacy_3, ___mute_mask_sound_legacy_3, .SFX_PRIORITY_NORMAL

        ; Camera Shake
        VM_SET_CONST            .LOCAL_TMP1_CAMERA_SHAKE_ARGS, 1
        VM_SET_CONST            ^/(.LOCAL_TMP1_CAMERA_SHAKE_ARGS + 1)/, .CAMERA_SHAKE_X
        VM_INVOKE               b_camera_shake_frames, _camera_shake_frames, 0, .LOCAL_TMP1_CAMERA_SHAKE_ARGS

        ; Call Script: Decrease Bullets
        VM_SET_CONST            .LOCAL_TMP2_ARG, 1
        VM_PUSH_CONST           5 ; Actor 0
        VM_PUSH_REFERENCE       ^/(.LOCAL_TMP2_ARG - 1)/ ; Variable V0
        VM_CALL_FAR             ___bank_script_10, _script_10

2$:

        ; Stop Script
        VM_STOP
