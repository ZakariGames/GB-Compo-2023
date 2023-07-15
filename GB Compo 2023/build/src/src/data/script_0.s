.module script_0

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames

.area _CODE_255

.LOCAL_TMP0_WAIT_ARGS = -1

___bank_script_0 = 255
.globl ___bank_script_0

_script_0::
        VM_RESERVE              1

        ; Variable Set To True
        VM_SET_CONST            VAR_TIMESTOPPED, 1

        VM_LOAD_PALETTE         1, ^/(.PALETTE_BKG | .PALETTE_COMMIT)/
        .CGB_PAL                23, 26, 26, 27, 16, 27, 16, 0, 20, 7, 0, 1
        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP0_WAIT_ARGS, 300
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP0_WAIT_ARGS

        ; Variable Set To False
        VM_SET_CONST            VAR_TIMESTOPPED, 0

        VM_LOAD_PALETTE         1, ^/(.PALETTE_BKG | .PALETTE_COMMIT)/
        .CGB_PAL                29, 30, 21, 21, 18, 19, 10, 6, 11, 5, 0, 3
        VM_RESERVE              -1
        VM_RET_FAR
