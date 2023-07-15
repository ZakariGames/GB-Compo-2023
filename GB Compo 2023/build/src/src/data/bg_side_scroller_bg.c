#pragma bank 255

// Background: side_scroller_bg

#include "gbs_types.h"
#include "data/bg_side_scroller_bg_tileset.h"
#include "data/bg_side_scroller_bg_tilemap.h"
#include "data/bg_fantasy_exterior_tilemap_attr.h"

BANKREF(bg_side_scroller_bg)

const struct background_t bg_side_scroller_bg = {
    .width = 80,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_side_scroller_bg_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_side_scroller_bg_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_fantasy_exterior_tilemap_attr)
};
