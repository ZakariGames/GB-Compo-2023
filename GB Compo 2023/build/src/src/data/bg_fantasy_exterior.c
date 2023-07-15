#pragma bank 255

// Background: fantasy_exterior

#include "gbs_types.h"
#include "data/bg_fantasy_exterior_tileset.h"
#include "data/bg_fantasy_exterior_tilemap.h"
#include "data/bg_fantasy_exterior_tilemap_attr.h"

BANKREF(bg_fantasy_exterior)

const struct background_t bg_fantasy_exterior = {
    .width = 40,
    .height = 36,
    .tileset = TO_FAR_PTR_T(bg_fantasy_exterior_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_fantasy_exterior_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_fantasy_exterior_tilemap_attr)
};
