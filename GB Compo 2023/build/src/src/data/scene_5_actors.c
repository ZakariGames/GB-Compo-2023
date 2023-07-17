#pragma bank 255

// Scene: Skill Tests
// Actors

#include "gbs_types.h"
#include "data/sprite_villager_bunny.h"
#include "data/actor_4_update.h"
#include "data/actor_4_interact.h"
#include "data/sprite_gb_heart.h"
#include "data/sprite_elements.h"
#include "data/sprite_villager_cat.h"
#include "data/sprite_bullet.h"
#include "data/actor_11_update.h"
#include "data/sprite_bone_shield.h"

BANKREF(scene_5_actors)

const struct actor_t scene_5_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 400 * 16,
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
        .persistent = TRUE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(actor_4_update),
        .script = TO_FAR_PTR_T(actor_4_interact),
        .reserve_tiles = 0
    },
    {
        // Actor 2,
        .pos = {
            .x = 0 * 16,
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
        // Actor 3,
        .pos = {
            .x = 64 * 16,
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
    },
    {
        // Bird,
        .pos = {
            .x = 48 * 16,
            .y = 56 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_villager_cat),
        .move_speed = 48,
        .anim_tick = 15,
        .pinned = FALSE,
        .persistent = TRUE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    },
    {
        // Bullets,
        .pos = {
            .x = 128 * 16,
            .y = 8 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_bullet),
        .move_speed = 16,
        .anim_tick = 255,
        .pinned = TRUE,
        .persistent = TRUE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = FALSE,
        .script_update = TO_FAR_PTR_T(actor_11_update),
        .reserve_tiles = 0
    },
    {
        // Actor 6,
        .pos = {
            .x = 48 * 16,
            .y = 40 * 16
        },
        .bounds = {
            .left = -16,
            .bottom = 7,
            .right = 31,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(sprite_bone_shield),
        .move_speed = 16,
        .anim_tick = 255,
        .pinned = FALSE,
        .persistent = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    }
};
