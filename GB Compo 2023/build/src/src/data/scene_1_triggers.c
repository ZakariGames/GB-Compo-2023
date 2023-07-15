#pragma bank 255

// Scene: Town
// Triggers

#include "gbs_types.h"
#include "data/trigger_0_interact.h"
#include "data/trigger_2_interact.h"
#include "data/trigger_1_interact.h"

BANKREF(scene_1_triggers)

const struct trigger_t scene_1_triggers[] = {
    {
        // Trigger 1,
        .x = 19,
        .y = 11,
        .width = 3,
        .height = 3,
        .script = TO_FAR_PTR_T(trigger_0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT | TRIGGER_HAS_LEAVE_SCRIPT
    },
    {
        // Trigger 2,
        .x = 8,
        .y = 10,
        .width = 2,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_2_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .x = 9,
        .y = 35,
        .width = 2,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_1_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
