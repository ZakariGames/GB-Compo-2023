.module test_symbol7

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_test_symbol7 = 255
.globl ___bank_test_symbol7

_test_symbol7::
        ; Variable Set To False
        VM_SET_CONST            VAR_GROUNDED, 0

        ; Input Script Attach
        VM_CONTEXT_PREPARE      5, ___bank_script_input_7, _script_input_7
        VM_INPUT_ATTACH         8, ^/(5 | .OVERRIDE_DEFAULT)/

        ; Stop Script
        VM_STOP
