.module script_input_1

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_1 = 255
.globl ___bank_script_input_1

_script_input_1::
        ; If Variable .EQ Value
        VM_IF_CONST             .EQ, VAR_ROCK_AMOUNT, 2, 1$, 0
        ; Advanced Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\003\002\002Rock collected!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 3, .UI_COLOR_WHITE

        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Variable Increment By 1
        VM_RPN
            .R_REF      VAR_ROCK_AMOUNT
            .R_INT8     1
            .R_OPERATOR .ADD
            .R_STOP
        VM_SET                  VAR_ROCK_AMOUNT, .ARG0
        VM_POP                  1

        VM_JUMP                 2$
1$:
2$:

        ; Stop Script
        VM_STOP
