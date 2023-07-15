.module scene_2_init

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step, ___bank_scene_1, _scene_1

.area _CODE_255

.LOCAL_TMP0_WAIT_ARGS = -4
.LOCAL_TMP1_SAVE_PEEK = -4
.LOCAL_ACTOR = -4

___bank_scene_2_init = 255
.globl ___bank_scene_2_init

_scene_2_init::
        VM_LOCK

        VM_RESERVE              4

        ; Hide Sprites
        VM_HIDE_SPRITES
        ; Music Play
        VM_MUSIC_PLAY           ___bank_song_song_template_2_Data, _song_song_template_2_Data, .MUSIC_NO_LOOP

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP0_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP0_WAIT_ARGS

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

2$:
        ; Background Text
        VM_PUSH_CONST 0
          VM_GET_UINT8 .ARG0, _overlay_priority
          VM_SET_CONST_UINT8 _overlay_priority, 0

        VM_SWITCH_TEXT_LAYER .TEXT_LAYER_BKG

        VM_LOAD_TEXT            0
        .asciz "\003\002\006GB Compo 2023"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_NONMODAL, .UI_WAIT_TEXT

        VM_SWITCH_TEXT_LAYER .TEXT_LAYER_WIN

        VM_SET_UINT8 _overlay_priority, .ARG0
        VM_POP 1

        ; Text Menu
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\003\002\002\001New Game\n\002\001Continue"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_CHOICE               VAR_S1_LOCAL_0, 0, 2
            .MENUITEM           1, 1, 1, 2, 0, 2
            .MENUITEM           1, 2, 1, 2, 1, 0
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; If Variable .EQ Value
        VM_IF_CONST             .EQ, VAR_S1_LOCAL_0, 1, 3$, 0
        ; If Variable True
        VM_SAVE_PEEK            .LOCAL_TMP1_SAVE_PEEK, 0, 0, 0, 0
        VM_IF_CONST             .EQ, .LOCAL_TMP1_SAVE_PEEK, 1, 5$, 0

        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "No saved data"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 6$
5$:
        ; Show Sprites
        VM_SHOW_SPRITES
        ; Load Data from Slot 0
        VM_RAISE                EXCEPTION_LOAD, 1
            .SAVE_SLOT 0

6$:

        VM_JUMP                 4$
3$:
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 1664
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 3072
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_DOWN
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_1

4$:

        VM_JUMP                 2$
        ; Stop Script
        VM_STOP
