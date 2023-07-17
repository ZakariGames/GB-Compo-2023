#pragma bank 255

// Scene: Skill Tests
// Projectiles

#include "gbs_types.h"
#include "data/sprite_static.h"
#include "data/sprite_actor.h"
#include "data/sprite_actor.h"
#include "data/sprite_actor.h"
#include "data/sprite_static.h"

BANKREF(scene_5_projectiles)

const struct projectile_def_t scene_5_projectiles[] = {
    {
        // Projectile 0,
        .sprite = TO_FAR_PTR_T(sprite_static),
        .move_speed = 64,
        .life_time = 60,
        .collision_group = COLLISION_GROUP_3,
        .collision_mask = COLLISION_GROUP_1,
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .anim_tick = 15,
        .animations = {
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            }
        },
        .initial_offset = 0
    },
    {
        // Projectile 1,
        .sprite = TO_FAR_PTR_T(sprite_actor),
        .move_speed = 64,
        .life_time = 24,
        .collision_group = COLLISION_GROUP_3,
        .collision_mask = COLLISION_GROUP_1,
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .anim_tick = 255,
        .animations = {
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            }
        },
        .initial_offset = 0
    },
    {
        // Projectile 2,
        .sprite = TO_FAR_PTR_T(sprite_actor),
        .move_speed = 48,
        .life_time = 24,
        .collision_group = COLLISION_GROUP_3,
        .collision_mask = COLLISION_GROUP_1,
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .anim_tick = 255,
        .animations = {
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            }
        },
        .initial_offset = 0
    },
    {
        // Projectile 3,
        .sprite = TO_FAR_PTR_T(sprite_actor),
        .move_speed = 48,
        .life_time = 30,
        .collision_group = COLLISION_GROUP_3,
        .collision_mask = COLLISION_GROUP_1,
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .anim_tick = 255,
        .animations = {
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            }
        },
        .initial_offset = 0
    },
    {
        // Projectile 4,
        .sprite = TO_FAR_PTR_T(sprite_static),
        .move_speed = 64,
        .life_time = 24,
        .collision_group = COLLISION_GROUP_3,
        .collision_mask = COLLISION_GROUP_1,
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .anim_tick = 15,
        .animations = {
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            }
        },
        .initial_offset = 0
    }
};
