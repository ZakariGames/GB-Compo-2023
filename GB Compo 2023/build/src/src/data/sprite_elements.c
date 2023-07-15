#pragma bank 255
// SpriteSheet: elements

#include "gbs_types.h"
#include "data/sprite_elements_tileset.h"

BANKREF(sprite_elements)

#define SPRITE_11_STATE_DEFAULT 0
#define SPRITE_11_STATE_NEW_STATE 0
#define SPRITE_11_STATE_ATTACK 0
#define SPRITE_11_STATE_CINDERED 0

const metasprite_t sprite_elements_metasprite_0[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t sprite_elements_metasprite_1[]  = {
    { 0, 8, 4, 0 }, { 0, -8, 6, 0 },
    {metasprite_end}
};

const metasprite_t sprite_elements_metasprite_2[]  = {
    { 0, 8, 8, 0 }, { 0, -8, 10, 0 },
    {metasprite_end}
};

const metasprite_t sprite_elements_metasprite_3[]  = {
    { 0, 8, 12, 0 }, { 0, -8, 12, 32 },
    {metasprite_end}
};

const metasprite_t * const sprite_elements_metasprites[] = {
    sprite_elements_metasprite_0,
    sprite_elements_metasprite_1,
    sprite_elements_metasprite_2,
    sprite_elements_metasprite_3
};

const struct animation_t sprite_elements_animations[] = {
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    }
};

const UWORD sprite_elements_animations_lookup[] = {
    SPRITE_11_STATE_DEFAULT
};

const struct spritesheet_t sprite_elements = {
    .n_metasprites = 4,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_elements_metasprites,
    .animations = sprite_elements_animations,
    .animations_lookup = sprite_elements_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_elements_tileset),
    .cgb_tileset = { NULL, NULL }
};
