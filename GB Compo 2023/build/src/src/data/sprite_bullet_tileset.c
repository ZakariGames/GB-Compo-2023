#pragma bank 255

// Tileset: sprite_bullet_tileset

#include "gbs_types.h"

BANKREF(sprite_bullet_tileset)

const struct tileset_t sprite_bullet_tileset = {
    .n_tiles = 2,
    .tiles = {
        0x18, 0x18, 0x2C, 0x34, 0x52, 0x6E, 0x52, 0x6E, 0x52, 0x6E, 0x52, 0x6E, 0x52, 0x6E, 0x52, 0x6E,
        0x52, 0x6E, 0x52, 0x6E, 0x52, 0x6E, 0x52, 0x6E, 0x52, 0x6E, 0x52, 0x6E, 0x52, 0x6E, 0x7E, 0x7E
    }
};
