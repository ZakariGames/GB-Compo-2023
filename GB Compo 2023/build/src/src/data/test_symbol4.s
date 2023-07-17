.module test_symbol4

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_test_symbol4 = 255
.globl ___bank_test_symbol4

_test_symbol4::
        ; Variable Set To True
        VM_SET_CONST            VAR_GROUNDED, 1

        ; Input Script Attach
        VM_CONTEXT_PREPARE      5, ___bank_script_input_13, _script_input_13
        VM_INPUT_ATTACH         8, ^/(5 | .OVERRIDE_DEFAULT)/

        ; Stop Script
        VM_STOP
