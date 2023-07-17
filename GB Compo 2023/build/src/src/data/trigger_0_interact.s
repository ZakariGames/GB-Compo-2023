.module trigger_0_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_TMP0_PARAM0_VALUE = -1
.LOCAL_TMP1_PARAM0_VALUE = -1

___bank_trigger_0_interact = 255
.globl ___bank_trigger_0_interact

_trigger_0_interact::
        VM_LOCK

        VM_RESERVE              1

        ; If Parameter 0 Equals 1
        VM_GET_TLOCAL           .LOCAL_TMP0_PARAM0_VALUE, 0
        VM_IF_CONST             .EQ, .LOCAL_TMP0_PARAM0_VALUE, 1, 1$, 0
        VM_JUMP                 2$
1$:
        ; If Variable True
        VM_IF_CONST             .GT, VAR_QUEST_ACCEPTED, 0, 3$, 0
        VM_JUMP                 4$
3$:
        ; Input Script Attach
        VM_CONTEXT_PREPARE      4, ___bank_script_input_1, _script_input_1
        VM_INPUT_ATTACH         16, 4

4$:

        ; Stop Script
        VM_STOP
2$:

        ; If Parameter 0 Equals 2
        VM_GET_TLOCAL           .LOCAL_TMP1_PARAM0_VALUE, 0
        VM_IF_CONST             .EQ, .LOCAL_TMP1_PARAM0_VALUE, 2, 5$, 0
        VM_JUMP                 6$
5$:
        ; Input Script Attach
        VM_CONTEXT_PREPARE      4, ___bank_script_input_2, _script_input_2
        VM_INPUT_ATTACH         16, 4

        ; Stop Script
        VM_STOP
6$:

        ; Stop Script
        VM_STOP
