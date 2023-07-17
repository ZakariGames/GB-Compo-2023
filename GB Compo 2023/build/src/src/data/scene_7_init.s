.module scene_7_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -4

___bank_scene_7_init = 255
.globl ___bank_scene_7_init

_scene_7_init::
        VM_LOCK

        VM_RESERVE              4

        ; Actor Hide
        VM_SET_CONST            .LOCAL_ACTOR, 2
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 1

        ; Variable Set To False
        VM_SET_CONST            VAR_IMMUNITY, 0

        ; Call Script: Set Health
        VM_PUSH_CONST           0 ; Actor 0
        VM_CALL_FAR             ___bank_script_4, _script_4

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Animation Frame To Variable
        VM_SET                  ^/(.LOCAL_ACTOR + 1)/, VAR_PLAYERHEALTH
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        ; Set Platformer Script
        VM_PUSH_CONST 9

        VM_PUSH_CONST ___bank_test_symbol9

        VM_PUSH_CONST _test_symbol9

        VM_CALL_NATIVE b_assign_state_script, _assign_state_script

        VM_POP 3

        ; Set Platformer Script
        VM_PUSH_CONST 10

        VM_PUSH_CONST ___bank_test_symbol10

        VM_PUSH_CONST _test_symbol10

        VM_CALL_NATIVE b_assign_state_script, _assign_state_script

        VM_POP 3

        ; Set Platformer Script
        VM_PUSH_CONST 11

        VM_PUSH_CONST ___bank_test_symbol11

        VM_PUSH_CONST _test_symbol11

        VM_CALL_NATIVE b_assign_state_script, _assign_state_script

        VM_POP 3

        ; Input Script Attach
        VM_CONTEXT_PREPARE      3, ___bank_script_input_29, _script_input_29
        VM_INPUT_ATTACH         32, ^/(3 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      2, ___bank_script_input_30, _script_input_30
        VM_INPUT_ATTACH         64, ^/(2 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      1, ___bank_script_input_31, _script_input_31
        VM_INPUT_ATTACH         128, ^/(1 | .OVERRIDE_DEFAULT)/

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
