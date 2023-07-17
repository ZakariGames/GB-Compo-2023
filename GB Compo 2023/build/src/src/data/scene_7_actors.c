#pragma bank 255

// Scene: Wall Jump
// Actors

#include "gbs_types.h"
#include "data/sprite_gb_heart.h"
#include "data/sprite_elements.h"

BANKREF(scene_7_actors)

const struct actor_t scene_7_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 16 * 16,
            .y = 8 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_gb_heart),
        .move_speed = 8,
        .anim_tick = 255,
        .pinned = TRUE,
        .persistent = TRUE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = FALSE,
        .reserve_tiles = 0
    },
    {
        // Actor 2,
        .pos = {
            .x = 136 * 16,
            .y = 8 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_elements),
        .move_speed = 1,
        .anim_tick = 255,
        .pinned = TRUE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = FALSE,
        .reserve_tiles = 0
    }
};
