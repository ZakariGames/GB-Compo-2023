#pragma bank 255

// Scene: Animation Test
// Actors

#include "gbs_types.h"
#include "data/sprite_cutsceneactor.h"

BANKREF(scene_10_actors)

const struct actor_t scene_10_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 72 * 16,
            .y = 128 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_cutsceneactor),
        .move_speed = 16,
        .anim_tick = 31,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    }
};
