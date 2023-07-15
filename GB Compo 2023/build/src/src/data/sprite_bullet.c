#pragma bank 255
// SpriteSheet: bullet

#include "gbs_types.h"
#include "data/sprite_bullet_tileset.h"

BANKREF(sprite_bullet)

#define SPRITE_13_STATE_DEFAULT 0
#define SPRITE_13_STATE_NEW_STATE 0
#define SPRITE_13_STATE_ATTACK 0
#define SPRITE_13_STATE_CINDERED 8

const metasprite_t sprite_bullet_metasprite_0[]  = {
    {metasprite_end}
};

const metasprite_t sprite_bullet_metasprite_1[]  = {
    { 0, 24, 0, 1 },
    {metasprite_end}
};

const metasprite_t sprite_bullet_metasprite_2[]  = {
    { 0, 24, 0, 1 }, { 0, -8, 0, 1 },
    {metasprite_end}
};

const metasprite_t sprite_bullet_metasprite_3[]  = {
    { 0, 24, 0, 1 }, { 0, -8, 0, 1 }, { 0, -8, 0, 1 },
    {metasprite_end}
};

const metasprite_t sprite_bullet_metasprite_4[]  = {
    { 0, 24, 0, 1 }, { 0, -8, 0, 1 }, { 0, -8, 0, 1 }, { 0, -8, 0, 1 },
    {metasprite_end}
};

const metasprite_t sprite_bullet_metasprite_5[]  = {
    { 0, 24, 0, 1 }, { 0, -8, 0, 1 }, { 0, -8, 0, 1 }, { 0, -8, 0, 1 }, { 0, -8, 0, 1 },
    {metasprite_end}
};

const metasprite_t sprite_bullet_metasprite_6[]  = {
    { 0, 24, 0, 1 }, { 0, -8, 0, 1 }, { 0, -8, 0, 1 }, { 0, -8, 0, 1 }, { 0, -8, 0, 1 }, { 0, -8, 0, 1 },
    {metasprite_end}
};

const metasprite_t sprite_bullet_metasprite_7[]  = {
    { 0, 24, 0, 1 }, { 0, -8, 0, 1 }, { 0, -8, 0, 1 }, { 0, -8, 0, 1 }, { 0, -8, 0, 1 }, { 0, -8, 0, 0 },
    {metasprite_end}
};

const metasprite_t sprite_bullet_metasprite_8[]  = {
    { 0, 24, 0, 1 }, { 0, -8, 0, 1 }, { 0, -8, 0, 1 }, { 0, -8, 0, 1 }, { 0, -8, 0, 0 }, { 0, -8, 0, 0 },
    {metasprite_end}
};

const metasprite_t sprite_bullet_metasprite_9[]  = {
    { 0, 24, 0, 1 }, { 0, -8, 0, 1 }, { 0, -8, 0, 1 }, { 0, -8, 0, 0 }, { 0, -8, 0, 0 }, { 0, -8, 0, 0 },
    {metasprite_end}
};

const metasprite_t sprite_bullet_metasprite_10[]  = {
    { 0, 24, 0, 1 }, { 0, -8, 0, 1 }, { 0, -8, 0, 0 }, { 0, -8, 0, 0 }, { 0, -8, 0, 0 }, { 0, -8, 0, 0 },
    {metasprite_end}
};

const metasprite_t sprite_bullet_metasprite_11[]  = {
    { 0, 24, 0, 1 }, { 0, -8, 0, 0 }, { 0, -8, 0, 0 }, { 0, -8, 0, 0 }, { 0, -8, 0, 0 }, { 0, -8, 0, 0 },
    {metasprite_end}
};

const metasprite_t sprite_bullet_metasprite_12[]  = {
    { 0, 24, 0, 0 }, { 0, -8, 0, 0 }, { 0, -8, 0, 0 }, { 0, -8, 0, 0 }, { 0, -8, 0, 0 }, { 0, -8, 0, 0 },
    {metasprite_end}
};

const metasprite_t * const sprite_bullet_metasprites[] = {
    sprite_bullet_metasprite_0,
    sprite_bullet_metasprite_1,
    sprite_bullet_metasprite_2,
    sprite_bullet_metasprite_3,
    sprite_bullet_metasprite_4,
    sprite_bullet_metasprite_5,
    sprite_bullet_metasprite_6,
    sprite_bullet_metasprite_7,
    sprite_bullet_metasprite_8,
    sprite_bullet_metasprite_9,
    sprite_bullet_metasprite_10,
    sprite_bullet_metasprite_11,
    sprite_bullet_metasprite_12
};

const struct animation_t sprite_bullet_animations[] = {
    {
        .start = 0,
        .end = 6
    },
    {
        .start = 0,
        .end = 6
    },
    {
        .start = 0,
        .end = 6
    },
    {
        .start = 0,
        .end = 6
    },
    {
        .start = 0,
        .end = 6
    },
    {
        .start = 0,
        .end = 6
    },
    {
        .start = 0,
        .end = 6
    },
    {
        .start = 0,
        .end = 6
    },
    {
        .start = 7,
        .end = 12
    },
    {
        .start = 7,
        .end = 12
    },
    {
        .start = 7,
        .end = 12
    },
    {
        .start = 7,
        .end = 12
    },
    {
        .start = 7,
        .end = 12
    },
    {
        .start = 7,
        .end = 12
    },
    {
        .start = 7,
        .end = 12
    },
    {
        .start = 7,
        .end = 12
    }
};

const UWORD sprite_bullet_animations_lookup[] = {
    SPRITE_13_STATE_DEFAULT,
    SPRITE_13_STATE_NEW_STATE,
    SPRITE_13_STATE_ATTACK,
    SPRITE_13_STATE_CINDERED
};

const struct spritesheet_t sprite_bullet = {
    .n_metasprites = 13,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_bullet_metasprites,
    .animations = sprite_bullet_animations,
    .animations_lookup = sprite_bullet_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_bullet_tileset),
    .cgb_tileset = { NULL, NULL }
};
