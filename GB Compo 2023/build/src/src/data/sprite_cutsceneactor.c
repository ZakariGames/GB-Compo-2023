#pragma bank 255
// SpriteSheet: cutsceneactor

#include "gbs_types.h"
#include "data/sprite_cutsceneactor_tileset.h"

BANKREF(sprite_cutsceneactor)

#define SPRITE_15_STATE_DEFAULT 0
#define SPRITE_15_STATE_NEW_STATE 0
#define SPRITE_15_STATE_ATTACK 0
#define SPRITE_15_STATE_CINDERED 0

const metasprite_t sprite_cutsceneactor_metasprite_0[]  = {
    { -80, 16, 0, 0 }, { -16, 0, 2, 0 }, { 96, -8, 4, 0 }, { -16, 0, 6, 0 }, { -16, 0, 8, 0 }, { -16, 0, 10, 0 }, { -16, 0, 12, 0 }, { -16, 0, 14, 0 }, { -16, 0, 16, 0 }, { 96, -8, 4, 32 }, { -16, 0, 6, 32 }, { -16, 0, 8, 32 }, { -16, 0, 10, 32 }, { -16, 0, 12, 32 }, { -16, 0, 14, 32 }, { -16, 0, 16, 32 }, { 16, -8, 0, 32 }, { -16, 0, 2, 32 },
    {metasprite_end}
};

const metasprite_t sprite_cutsceneactor_metasprite_1[]  = {
    { -64, 16, 18, 0 }, { -16, 0, 20, 0 }, { -16, 0, 22, 0 }, { 96, -8, 24, 0 }, { -16, 0, 26, 0 }, { -16, 0, 28, 0 }, { -16, 0, 30, 0 }, { -16, 0, 32, 0 }, { -16, 0, 34, 0 }, { -16, 0, 36, 0 }, { 96, -8, 24, 32 }, { -16, 0, 26, 32 }, { -16, 0, 28, 32 }, { -16, 0, 30, 32 }, { -16, 0, 32, 32 }, { -16, 0, 34, 32 }, { -16, 0, 36, 32 }, { 32, -8, 18, 32 }, { -16, 0, 20, 32 }, { -16, 0, 22, 32 },
    {metasprite_end}
};

const metasprite_t sprite_cutsceneactor_metasprite_2[]  = {
    { -64, 16, 38, 0 }, { -16, 0, 40, 0 }, { 80, -8, 42, 0 }, { -16, 0, 44, 0 }, { -16, 0, 46, 0 }, { -16, 0, 48, 0 }, { -16, 0, 50, 0 }, { -16, 0, 52, 0 }, { -16, 0, 54, 0 }, { 96, -8, 42, 32 }, { -16, 0, 44, 32 }, { -16, 0, 46, 32 }, { -16, 0, 48, 32 }, { -16, 0, 50, 32 }, { -16, 0, 52, 32 }, { -16, 0, 54, 32 }, { 32, -8, 38, 32 }, { -16, 0, 40, 32 },
    {metasprite_end}
};

const metasprite_t * const sprite_cutsceneactor_metasprites[] = {
    sprite_cutsceneactor_metasprite_0,
    sprite_cutsceneactor_metasprite_1,
    sprite_cutsceneactor_metasprite_2,
    sprite_cutsceneactor_metasprite_1
};

const struct animation_t sprite_cutsceneactor_animations[] = {
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

const UWORD sprite_cutsceneactor_animations_lookup[] = {
    SPRITE_15_STATE_DEFAULT
};

const struct spritesheet_t sprite_cutsceneactor = {
    .n_metasprites = 4,
    .emote_origin = {
        .x = 0,
        .y = -112
    },
    .metasprites = sprite_cutsceneactor_metasprites,
    .animations = sprite_cutsceneactor_animations,
    .animations_lookup = sprite_cutsceneactor_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_cutsceneactor_tileset),
    .cgb_tileset = { NULL, NULL }
};
