#pragma bank 255

// Scene: Skill Tests
// Triggers

#include "gbs_types.h"


BANKREF(scene_5_triggers)

const struct trigger_t scene_5_triggers[] = {
    {
        // Trigger 1,
        .x = 79,
        .y = 5,
        .width = 1,
        .height = 10,
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
