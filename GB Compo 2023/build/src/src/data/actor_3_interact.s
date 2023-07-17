.module actor_3_interact

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames

.area _CODE_255

.LOCAL_TMP0_PARAM0_VALUE = -4
.LOCAL_TMP1_WAIT_ARGS = -4
.LOCAL_ACTOR = -4

___bank_actor_3_interact = 255
.globl ___bank_actor_3_interact

_actor_3_interact::
        VM_RESERVE              4

        ; If Parameter 0 Equals 8
        VM_GET_TLOCAL           .LOCAL_TMP0_PARAM0_VALUE, 0
        VM_IF_CONST             .EQ, .LOCAL_TMP0_PARAM0_VALUE, 8, 1$, 0
        VM_JUMP                 2$
1$:
        ; Sound Play Crash
        VM_SFX_PLAY             ___bank_sound_legacy_1, _sound_legacy_1, ___mute_mask_sound_legacy_1, .SFX_PRIORITY_NORMAL

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        ; Actor Deactivate
        VM_SET_CONST            .LOCAL_ACTOR, 3
        VM_ACTOR_DEACTIVATE     .LOCAL_ACTOR

        ; Stop Script
        VM_STOP
2$:

        ; Stop Script
        VM_STOP
