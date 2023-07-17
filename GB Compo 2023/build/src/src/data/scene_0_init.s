.module scene_0_init

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step, ___bank_scene_8, _scene_8

.area _CODE_255

.LOCAL_TMP0_WAIT_ARGS = -4
.LOCAL_TMP1_WAIT_ARGS = -4
.LOCAL_TMP2_CAMERA_MOVE_ARGS = -4
.LOCAL_TMP3_WAIT_ARGS = -4
.LOCAL_ACTOR = -4

___bank_scene_0_init = 255
.globl ___bank_scene_0_init

_scene_0_init::
        VM_LOCK

        VM_RESERVE              4

        ; Input Script Attach
        VM_CONTEXT_PREPARE      1, ___bank_script_input_32, _script_input_32
        VM_INPUT_ATTACH         255, ^/(1 | .OVERRIDE_DEFAULT)/

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP0_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP0_WAIT_ARGS

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Background Text
        VM_PUSH_CONST 0
          VM_GET_UINT8 .ARG0, _overlay_priority
          VM_SET_CONST_UINT8 _overlay_priority, 0

        VM_SWITCH_TEXT_LAYER .TEXT_LAYER_BKG

        VM_LOAD_TEXT            0
        .asciz "\003\013\006As he"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_NONMODAL, .UI_WAIT_TEXT

        VM_SWITCH_TEXT_LAYER .TEXT_LAYER_WIN

        VM_SET_UINT8 _overlay_priority, .ARG0
        VM_POP 1

        ; Background Text
        VM_PUSH_CONST 0
          VM_GET_UINT8 .ARG0, _overlay_priority
          VM_SET_CONST_UINT8 _overlay_priority, 0

        VM_SWITCH_TEXT_LAYER .TEXT_LAYER_BKG

        VM_LOAD_TEXT            0
        .asciz "\003\013\007looked out"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_NONMODAL, .UI_WAIT_TEXT

        VM_SWITCH_TEXT_LAYER .TEXT_LAYER_WIN

        VM_SET_UINT8 _overlay_priority, .ARG0
        VM_POP 1

        ; Background Text
        VM_PUSH_CONST 0
          VM_GET_UINT8 .ARG0, _overlay_priority
          VM_SET_CONST_UINT8 _overlay_priority, 0

        VM_SWITCH_TEXT_LAYER .TEXT_LAYER_BKG

        VM_LOAD_TEXT            0
        .asciz "\003\013\010upon his"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_NONMODAL, .UI_WAIT_TEXT

        VM_SWITCH_TEXT_LAYER .TEXT_LAYER_WIN

        VM_SET_UINT8 _overlay_priority, .ARG0
        VM_POP 1

        ; Background Text
        VM_PUSH_CONST 0
          VM_GET_UINT8 .ARG0, _overlay_priority
          VM_SET_CONST_UINT8 _overlay_priority, 0

        VM_SWITCH_TEXT_LAYER .TEXT_LAYER_BKG

        VM_LOAD_TEXT            0
        .asciz "\003\013\011kingdom..."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_NONMODAL, .UI_WAIT_TEXT

        VM_SWITCH_TEXT_LAYER .TEXT_LAYER_WIN

        VM_SET_UINT8 _overlay_priority, .ARG0
        VM_POP 1

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 180
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        ; Camera Move To
        VM_SET_CONST            .LOCAL_TMP2_CAMERA_MOVE_ARGS, 240
        VM_SET_CONST            ^/(.LOCAL_TMP2_CAMERA_MOVE_ARGS + 1)/, 72
        VM_CAMERA_MOVE_TO       .LOCAL_TMP2_CAMERA_MOVE_ARGS, 1, .CAMERA_UNLOCK

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP3_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP3_WAIT_ARGS

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_OUT             1
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_DOWN
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_8

        ; Stop Script
        VM_STOP
