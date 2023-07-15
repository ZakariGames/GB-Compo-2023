#pragma bank 255

// Background: wall-jump

#include "gbs_types.h"
#include "data/bg_wall_jump_tileset.h"
#include "data/bg_wall_jump_tilemap.h"
#include "data/bg_wall_jump_tilemap_attr.h"

BANKREF(bg_wall_jump)

const struct background_t bg_wall_jump = {
    .width = 40,
    .height = 54,
    .tileset = TO_FAR_PTR_T(bg_wall_jump_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_wall_jump_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_wall_jump_tilemap_attr)
};
