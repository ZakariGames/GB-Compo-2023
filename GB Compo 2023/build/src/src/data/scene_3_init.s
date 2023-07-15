.module scene_3_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -4

___bank_scene_3_init = 255
.globl ___bank_scene_3_init

_scene_3_init::
        VM_LOCK

        VM_RESERVE              4

        ; Actor Hide
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 1

        ; Input Script Attach
        VM_CONTEXT_PREPARE      1, ___bank_script_input_4, _script_input_4
        VM_INPUT_ATTACH         128, ^/(1 | .OVERRIDE_DEFAULT)/

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

2$:
        ; Advanced Menu
        VM_OVERLAY_MOVE_TO      20, 0, .OVERLAY_SPEED_INSTANT
        VM_LOAD_TEXT            0
        .asciz "\001\1\003\003\002Inventory\003\003\003Close"
        VM_OVERLAY_CLEAR        0, 0, 10, 18, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      10, 0, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_CHOICE               VAR_S2_LOCAL_0, .UI_MENU_CANCEL_B, 2
            .MENUITEM           1, 1, 0, 0, 2, 2
            .MENUITEM           1, 2, 0, 0, 1, 2
        VM_OVERLAY_MOVE_TO      20, 0, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT

        ; Switch Variable
        VM_SWITCH               VAR_S2_LOCAL_0, 2, 0
        .dw 1, 3$
        .dw 2, 4$

        VM_JUMP                 5$
        ; case 1:
3$:
        ; Advanced Menu
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_LOAD_TEXT            0
        .asciz "\001\1\003\003\002Item 1\003\014\002Item 2\003\003\003Back"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_CHOICE               VAR_S2_LOCAL_0, .UI_MENU_CANCEL_B, 3
            .MENUITEM           1, 1, 2, 2, 3, 3
            .MENUITEM           10, 1, 1, 1, 0, 0
            .MENUITEM           1, 2, 0, 0, 1, 1
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT

        ; Switch Variable
        VM_SWITCH               VAR_S2_LOCAL_0, 3, 0
        .dw 1, 6$
        .dw 2, 7$
        .dw 3, 8$

        VM_JUMP                 9$
        ; case 1:
6$:
        ; Advanced Text Dialogue
        ; Set overlay scanline cut
        VM_PUSH_CONST 0
        VM_GET_UINT8 .ARG0, _overlay_cut_scanline
        VM_SET_CONST_UINT8 _overlay_cut_scanline, 31

        VM_LOAD_TEXT            0
        .asciz "\003\002\002Item 1 selected."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 0, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 3, .UI_COLOR_WHITE

        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        ; Reset overlay scanline cut
        VM_IDLE
        VM_SET_UINT8 _overlay_cut_scanline, .ARG0

        VM_POP 1


        VM_JUMP                 9$
        ; case 2:
7$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "Item 2 Selected."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 9$
        ; case 3:
8$:
        VM_JUMP                 9$
9$:

        VM_JUMP                 5$
        ; case 2:
4$:
        ; Pop Scene State
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SCENE_POP

        ; Stop Script
        VM_STOP
        VM_JUMP                 5$
5$:

        VM_JUMP                 2$
        ; Stop Script
        VM_STOP
