#pragma bank 255

// Scene: Wall Jump
// Projectiles

#include "gbs_types.h"
#include "data/sprite_actor_animated.h"
#include "data/sprite_static.h"

BANKREF(scene_7_projectiles)

const struct projectile_def_t scene_7_projectiles[] = {
    {
        // Projectile 0,
        .sprite = TO_FAR_PTR_T(sprite_actor_animated),
        .move_speed = 32,
        .life_time = 6,
        .collision_group = COLLISION_GROUP_3,
        .collision_mask = COLLISION_GROUP_1,
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = 0
        },
        .anim_tick = 255,
        .animations = {
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 1,
                .end = 1
            },
            {
                .start = 2,
                .end = 2
            },
            {
                .start = 3,
                .end = 3
            }
        },
        .initial_offset = 0
    },
    {
        // Projectile 1,
        .sprite = TO_FAR_PTR_T(sprite_static),
        .move_speed = 32,
        .life_time = 6,
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
