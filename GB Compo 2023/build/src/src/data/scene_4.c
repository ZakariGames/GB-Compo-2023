#pragma bank 255

// Scene: Platformer

#include "gbs_types.h"
#include "data/bg_side_scroller_bg.h"
#include "data/scene_4_collisions.h"
#include "data/palette_0.h"
#include "data/palette_1.h"
#include "data/sprite_gb_knight_anin.h"
#include "data/scene_4_actors.h"
#include "data/scene_4_sprites.h"
#include "data/scene_4_projectiles.h"
#include "data/scene_4_init.h"

BANKREF(scene_4)

const struct scene_t scene_4 = {
    .width = 80,
    .height = 18,
    .type = SCENE_TYPE_PLATFORM,
    .background = TO_FAR_PTR_T(bg_side_scroller_bg),
    .collisions = TO_FAR_PTR_T(scene_4_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0, 3, 2), PARALLAX_STEP(3, 6, 1), PARALLAX_STEP(6, 0, 0)
    },
    .palette = TO_FAR_PTR_T(palette_0),
    .sprite_palette = TO_FAR_PTR_T(palette_1),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_gb_knight_anin),
    .n_actors = 3,
    .n_triggers = 0,
    .n_sprites = 4,
    .n_projectiles = 4,
    .actors = TO_FAR_PTR_T(scene_4_actors),
    .sprites = TO_FAR_PTR_T(scene_4_sprites),
    .projectiles = TO_FAR_PTR_T(scene_4_projectiles),
    .script_init = TO_FAR_PTR_T(scene_4_init)
};
