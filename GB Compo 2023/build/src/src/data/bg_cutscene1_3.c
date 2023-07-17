#pragma bank 255

// Background: cutscene1-3

#include "gbs_types.h"
#include "data/bg_cutscene1_3_tileset.h"
#include "data/bg_cutscene1_3_tilemap.h"
#include "data/bg_cutscene1_3_tilemap_attr.h"

BANKREF(bg_cutscene1_3)

const struct background_t bg_cutscene1_3 = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_cutscene1_3_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_cutscene1_3_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_cutscene1_3_tilemap_attr)
};
