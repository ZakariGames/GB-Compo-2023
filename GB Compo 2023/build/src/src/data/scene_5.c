#pragma bank 255

// Scene: Skill Tests

#include "gbs_types.h"
#include "data/bg_side_scroller_bg.h"
#include "data/scene_5_collisions.h"
#include "data/palette_0.h"
#include "data/palette_2.h"
#include "data/sprite_villager_deer.h"
#include "data/scene_5_actors.h"
#include "data/scene_5_triggers.h"
#include "data/scene_5_sprites.h"
#include "data/scene_5_projectiles.h"
#include "data/scene_5_init.h"
#include "data/scene_5_p_hit1.h"

BANKREF(scene_5)

const struct scene_t scene_5 = {
    .width = 80,
    .height = 18,
    .type = SCENE_TYPE_PLATFORM,
    .background = TO_FAR_PTR_T(bg_side_scroller_bg),
    .collisions = TO_FAR_PTR_T(scene_5_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_0),
    .sprite_palette = TO_FAR_PTR_T(palette_2),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_villager_deer),
    .n_actors = 6,
    .n_triggers = 1,
    .n_sprites = 8,
    .n_projectiles = 5,
    .actors = TO_FAR_PTR_T(scene_5_actors),
    .triggers = TO_FAR_PTR_T(scene_5_triggers),
    .sprites = TO_FAR_PTR_T(scene_5_sprites),
    .projectiles = TO_FAR_PTR_T(scene_5_projectiles),
    .script_init = TO_FAR_PTR_T(scene_5_init),
    .script_p_hit1 = TO_FAR_PTR_T(scene_5_p_hit1)
};
