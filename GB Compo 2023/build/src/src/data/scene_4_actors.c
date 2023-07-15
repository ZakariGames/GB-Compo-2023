#pragma bank 255

// Scene: Platformer
// Actors

#include "gbs_types.h"
#include "data/sprite_villager_bunny.h"
#include "data/actor_1_interact.h"
#include "data/sprite_villager_ram.h"
#include "data/actor_2_update.h"
#include "data/actor_2_interact.h"
#include "data/sprite_villager_bunny.h"
#include "data/actor_3_update.h"
#include "data/actor_3_interact.h"

BANKREF(scene_4_actors)

const struct actor_t scene_4_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 80 * 16,
            .y = 112 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_villager_bunny),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(actor_1_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 2,
        .pos = {
            .x = 128 * 16,
            .y = 40 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_villager_ram),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_2_update),
        .script = TO_FAR_PTR_T(actor_2_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 3,
        .pos = {
            .x = 560 * 16,
            .y = 112 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_LEFT,
        .sprite = TO_FAR_PTR_T(sprite_villager_bunny),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_3_update),
        .script = TO_FAR_PTR_T(actor_3_interact),
        .reserve_tiles = 0
    }
};
