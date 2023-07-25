#pragma bank 255

// Scene: Cutscene test

#include "gbs_types.h"
#include "data/bg_cutscene1.h"
#include "data/scene_0_collisions.h"
#include "data/palette_0.h"
#include "data/palette_1.h"
#include "data/sprite_actor.h"
#include "data/scene_0_init.h"

BANKREF(scene_0)

const struct scene_t scene_0 = {
    .width = 40,
    .height = 18,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_cutscene1),
    .collisions = TO_FAR_PTR_T(scene_0_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_0),
    .sprite_palette = TO_FAR_PTR_T(palette_1),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_actor),
    .n_actors = 0,
    .n_triggers = 0,
    .n_sprites = 0,
    .n_projectiles = 0,
    .script_init = TO_FAR_PTR_T(scene_0_init)
};