#pragma bank 255

// Scene: Town

#include "gbs_types.h"
#include "data/bg_fantasy_exterior.h"
#include "data/scene_1_collisions.h"
#include "data/palette_0.h"
#include "data/palette_1.h"
#include "data/sprite_villager_fox.h"
#include "data/scene_1_actors.h"
#include "data/scene_1_triggers.h"
#include "data/scene_1_sprites.h"
#include "data/scene_1_init.h"

BANKREF(scene_1)

const struct scene_t scene_1 = {
    .width = 40,
    .height = 36,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_fantasy_exterior),
    .collisions = TO_FAR_PTR_T(scene_1_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_0),
    .sprite_palette = TO_FAR_PTR_T(palette_1),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_villager_fox),
    .n_actors = 1,
    .n_triggers = 3,
    .n_sprites = 1,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_1_actors),
    .triggers = TO_FAR_PTR_T(scene_1_triggers),
    .sprites = TO_FAR_PTR_T(scene_1_sprites),
    .script_init = TO_FAR_PTR_T(scene_1_init)
};
