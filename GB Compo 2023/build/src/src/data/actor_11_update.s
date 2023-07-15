.module actor_11_update

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_11_update = 255
.globl ___bank_actor_11_update

_actor_11_update::
1$:
        ; Set Platformer Script
        VM_PUSH_CONST 4

        VM_PUSH_CONST ___bank_test_symbol4

        VM_PUSH_CONST _test_symbol4

        VM_CALL_NATIVE b_assign_state_script, _assign_state_script

        VM_POP 3

        ; Set Platformer Script
        VM_PUSH_CONST 7

        VM_PUSH_CONST ___bank_test_symbol7_0

        VM_PUSH_CONST _test_symbol7_0

        VM_CALL_NATIVE b_assign_state_script, _assign_state_script

        VM_POP 3

        ; Idle
        VM_IDLE

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP
