.module actor_2_interact

.include "vm.i"
.include "data/game_globals.i"

.globl _plat_dash

.area _CODE_255


___bank_actor_2_interact = 255
.globl ___bank_actor_2_interact

_actor_2_interact::
        VM_LOCK

        ; If Variable True
        VM_IF_CONST             .GT, VAR_S3A1_LOCAL_0, 0, 1$, 0
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "Dash Activated!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Engine Field Set To Value
        VM_SET_CONST_INT8       _plat_dash, 2

        ; Variable Set To True
        VM_SET_CONST            VAR_S3A1_LOCAL_0, 1

        VM_JUMP                 2$
1$:
2$:

        ; Stop Script
        VM_STOP
