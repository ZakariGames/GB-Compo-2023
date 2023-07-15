.module scene_5_init

.include "vm.i"
.include "data/game_globals.i"

.globl _camera_offset_x, b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -4

___bank_scene_5_init = 255
.globl ___bank_scene_5_init

_scene_5_init::
        VM_LOCK

        VM_RESERVE              4

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Move Relative
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    -640
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_H_FIRST
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Actor Hide
        VM_SET_CONST            .LOCAL_ACTOR, 3
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 1

        ; Actor Deactivate
        VM_SET_CONST            .LOCAL_ACTOR, 4
        VM_ACTOR_DEACTIVATE     .LOCAL_ACTOR

        ; Actor Deactivate
        VM_SET_CONST            .LOCAL_ACTOR, 6
        VM_ACTOR_DEACTIVATE     .LOCAL_ACTOR

        ; Variable Set To False
        VM_SET_CONST            VAR_IMMUNITY, 0

        ; Call Script: Set Health
        VM_PUSH_CONST           2 ; Actor 0
        VM_CALL_FAR             ___bank_script_4, _script_4

        ; Call Script: Set Bullet Count
        VM_PUSH_CONST           5 ; Actor 0
        VM_CALL_FAR             ___bank_script_11, _script_11

        ; Camera Field Set To Value
        VM_SET_CONST_INT8       _camera_offset_x, -30

        ; Input Script Attach
        VM_CONTEXT_PREPARE      2, ___bank_script_input_8, _script_input_8
        VM_INPUT_ATTACH         64, ^/(2 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      1, ___bank_script_input_9, _script_input_9
        VM_INPUT_ATTACH         128, ^/(1 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      3, ___bank_script_input_10, _script_input_10
        VM_INPUT_ATTACH         32, ^/(3 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      6, ___bank_script_input_11, _script_input_11
        VM_INPUT_ATTACH         4, ^/(6 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      4, ___bank_script_input_12, _script_input_12
        VM_INPUT_ATTACH         16, 4

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_IN              1

        ; Push Scene State
        VM_SCENE_PUSH

        ; Stop Script
        VM_STOP
