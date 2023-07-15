.module script_timer_3

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_TMP0_INPUT = -1

___bank_script_timer_3 = 255
.globl ___bank_script_timer_3

_script_timer_3::
        VM_RESERVE              1

        ; If Input
        VM_GET_INT8             .LOCAL_TMP0_INPUT, ^/(_joypads + 1)/
        VM_RPN
            .R_REF      .LOCAL_TMP0_INPUT
            .R_INT8     64
            .R_OPERATOR .B_AND
            .R_STOP
        VM_IF_CONST             .NE, .ARG0, 0, 1$, 1

        VM_JUMP                 2$
1$:
        ; Advanced Menu
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_LOAD_TEXT            0
        .asciz "\001\1\003\003\002Shadow\003\014\002Bone\003\003\003Fire\003\014\003Blood"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_CHOICE               VAR_ACTIVESKILL, .UI_MENU_CANCEL_B, 4
            .MENUITEM           1, 1, 0, 2, 0, 3
            .MENUITEM           10, 1, 1, 0, 0, 4
            .MENUITEM           1, 2, 0, 4, 1, 0
            .MENUITEM           10, 2, 3, 0, 2, 0
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT

        ; Switch Variable
        VM_SWITCH               VAR_ACTIVESKILL, 4, 0
        .dw 1, 3$
        .dw 2, 4$
        .dw 3, 5$
        .dw 4, 6$

        VM_JUMP                 7$
        ; case 1:
3$:
        ; Variable Set To True
        VM_SET_CONST            VAR_ACTIVESKILL, 1

        VM_JUMP                 7$
        ; case 2:
4$:
        ; Variable Set To Value
        VM_SET_CONST            VAR_ACTIVESKILL, 2

        VM_JUMP                 7$
        ; case 3:
5$:
        ; Variable Set To Value
        VM_SET_CONST            VAR_ACTIVESKILL, 3

        VM_JUMP                 7$
        ; case 4:
6$:
        ; Variable Set To Value
        VM_SET_CONST            VAR_ACTIVESKILL, 4

        VM_JUMP                 7$
7$:

2$:

        ; Stop Script
        VM_STOP
