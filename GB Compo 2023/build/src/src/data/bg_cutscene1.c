#pragma bank 255

// Background: cutscene1

#include "gbs_types.h"
#include "data/bg_cutscene1_tileset.h"
#include "data/bg_cutscene1_tilemap.h"
#include "data/bg_cutscene1_tilemap_attr.h"

BANKREF(bg_cutscene1)

const struct background_t bg_cutscene1 = {
    .width = 40,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_cutscene1_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_cutscene1_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_cutscene1_tilemap_attr)
};
