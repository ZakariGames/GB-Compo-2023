#pragma bank 255
// SpriteSheet: bone_shield

#include "gbs_types.h"
#include "data/sprite_bone_shield_tileset.h"

BANKREF(sprite_bone_shield)

#define SPRITE_14_STATE_DEFAULT 0
#define SPRITE_14_STATE_NEW_STATE 0
#define SPRITE_14_STATE_ATTACK 0
#define SPRITE_14_STATE_CINDERED 0

const metasprite_t sprite_bone_shield_metasprite_0[]  = {
    { 0, 24, 0, 0 }, { 0, -8, 2, 0 }, { 0, -24, 2, 32 }, { 0, -8, 0, 32 },
    {metasprite_end}
};

const metasprite_t sprite_bone_shield_metasprite_1[]  = {
    { 7, 24, 4, 0 }, { -16, 0, 0, 0 }, { 16, -8, 6, 0 }, { -16, 0, 2, 0 }, { 16, -24, 6, 32 }, { -16, 0, 2, 32 }, { 16, -8, 4, 32 }, { -16, 0, 0, 32 },
    {metasprite_end}
};

const metasprite_t sprite_bone_shield_metasprite_2[]  = {
    { 0, 24, 4, 0 }, { -16, 0, 0, 0 }, { 16, -8, 6, 0 }, { -16, 0, 2, 0 }, { 16, -24, 6, 32 }, { -16, 0, 2, 32 }, { 16, -8, 4, 32 }, { -16, 0, 0, 32 },
    {metasprite_end}
};

const metasprite_t * const sprite_bone_shield_metasprites[] = {
    sprite_bone_shield_metasprite_0,
    sprite_bone_shield_metasprite_1,
    sprite_bone_shield_metasprite_2
};

const struct animation_t sprite_bone_shield_animations[] = {
    {
        .start = 0,
        .end = 2
    },
    {
        .start = 0,
        .end = 2
    },
    {
        .start = 0,
        .end = 2
    },
    {
        .start = 0,
        .end = 2
    },
    {
        .start = 0,
        .end = 2
    },
    {
        .start = 0,
        .end = 2
    },
    {
        .start = 0,
        .end = 2
    },
    {
        .start = 0,
        .end = 2
    }
};

const UWORD sprite_bone_shield_animations_lookup[] = {
    SPRITE_14_STATE_DEFAULT
};

const struct spritesheet_t sprite_bone_shield = {
    .n_metasprites = 3,
    .emote_origin = {
        .x = 0,
        .y = -24
    },
    .metasprites = sprite_bone_shield_metasprites,
    .animations = sprite_bone_shield_animations,
    .animations_lookup = sprite_bone_shield_animations_lookup,
    .bounds = {
        .left = -16,
        .bottom = 7,
        .right = 31,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_bone_shield_tileset),
    .cgb_tileset = { NULL, NULL }
};
