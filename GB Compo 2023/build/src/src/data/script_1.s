.module script_1

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.SCRIPT_ARG_INDIRECT_0_VARIABLE = -4
.LOCAL_TMP0_MENU_RESULT = -1
.LOCAL_TMP1_HAS_LOADED = -1

___bank_script_1 = 255
.globl ___bank_script_1

_script_1::
        VM_RESERVE              1

        ; Text Menu
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\003\002\002\001Save\n\002\001Cancel"
        VM_OVERLAY_CLEAR        0, 0, 10, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      10, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      10, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_CHOICE               .LOCAL_TMP0_MENU_RESULT, .UI_MENU_CANCEL_B, 2
            .MENUITEM           1, 1, 1, 2, 0, 2
            .MENUITEM           1, 2, 1, 2, 1, 0
        VM_OVERLAY_MOVE_TO      10, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_SET_INDIRECT         .SCRIPT_ARG_INDIRECT_0_VARIABLE, .LOCAL_TMP0_MENU_RESULT

        ; If Variable .EQ Value
        VM_PUSH_VALUE_IND       .SCRIPT_ARG_INDIRECT_0_VARIABLE
        VM_IF_CONST             .EQ, .ARG0, 1, 1$, 1
        VM_JUMP                 2$
1$:
        ; Save Data to Slot 0
        VM_RAISE                EXCEPTION_SAVE, 1
            .SAVE_SLOT 0
        VM_POLL_LOADED          .LOCAL_TMP1_HAS_LOADED
        VM_IF_CONST             .EQ, .LOCAL_TMP1_HAS_LOADED, 1, 3$, 0

        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "Progress Saved."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Input Script Remove
        VM_INPUT_DETACH         16

3$:

2$:

        VM_RESERVE              -1
        VM_RET_FAR_N            1
