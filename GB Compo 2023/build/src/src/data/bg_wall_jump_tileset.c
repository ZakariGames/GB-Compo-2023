#pragma bank 255

// Tileset: bg_wall_jump_tileset

#include "gbs_types.h"

BANKREF(bg_wall_jump_tileset)

const struct tileset_t bg_wall_jump_tileset = {
    .n_tiles = 73,
    .tiles = {
        0xBD, 0x7E, 0x5A, 0xE7, 0xA5, 0xDB, 0xDB, 0xA5, 0xDB, 0xA5, 0xA5, 0xDB, 0x5A, 0xE7, 0xBD, 0x7E,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0xFF, 0x00, 0xFC, 0x00,
        0x00, 0x00, 0x01, 0x00, 0x03, 0x00, 0x0E, 0x00, 0x7C, 0x00, 0xF0, 0x00, 0x80, 0x00, 0x00, 0x00,
        0xD8, 0x00, 0x8C, 0x00, 0x06, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0xF0, 0x00, 0x7E, 0x00, 0x0F, 0x00, 0x01, 0x00,
        0xC0, 0x00, 0xF0, 0x00, 0x3C, 0x00, 0x0F, 0x00, 0x03, 0x00, 0x00, 0x00, 0x07, 0x00, 0xF8, 0x00,
        0x00, 0x00, 0x03, 0x00, 0x0F, 0x00, 0xFC, 0x00, 0xF0, 0x00, 0xF0, 0x00, 0x0E, 0x00, 0x01, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x40, 0x3F, 0xA0, 0x40, 0x5F, 0x80, 0x3E, 0x81, 0x3E, 0x81, 0x3E, 0x81, 0x3E, 0x81, 0x3E, 0x81,
        0x02, 0xFC, 0x05, 0x02, 0xFE, 0x01, 0x7C, 0x83, 0x7C, 0x83, 0x7C, 0x83, 0x7C, 0x83, 0x7C, 0x83,
        0x3F, 0x80, 0x3E, 0x81, 0x5F, 0xA0, 0xA0, 0x5F, 0x40, 0x3F, 0x00, 0x03, 0x01, 0x02, 0x01, 0x02,
        0xFC, 0x03, 0x7C, 0x83, 0xFA, 0x05, 0x05, 0xFA, 0x02, 0xFC, 0x00, 0xC0, 0x80, 0x40, 0x80, 0x40,
        0xBF, 0x7F, 0x40, 0xFF, 0xBF, 0xC0, 0xB1, 0xC0, 0xAE, 0xC1, 0xAE, 0xC1, 0xAE, 0xC1, 0xB1, 0xCE,
        0xFF, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0xF3, 0x00, 0xED, 0x02, 0xED, 0x02, 0xF3, 0x0C, 0xFF, 0x00,
        0xFF, 0xFF, 0x12, 0xEF, 0xED, 0x02, 0xED, 0x02, 0xED, 0x02, 0xF3, 0x0C, 0xFF, 0x00, 0xFF, 0x00,
        0xFD, 0xFE, 0x02, 0xFF, 0xFF, 0x01, 0xED, 0x01, 0xD5, 0x09, 0xED, 0x11, 0xFD, 0x01, 0xFD, 0x01,
        0xBF, 0xC0, 0xBF, 0xC0, 0xBF, 0xC0, 0xB3, 0xC0, 0xAD, 0xC2, 0xED, 0x82, 0x40, 0xC0, 0xBF, 0x7F,
        0xFF, 0x00, 0xE7, 0x00, 0xDB, 0x04, 0xDB, 0x04, 0xDB, 0x04, 0xDB, 0x04, 0x04, 0x00, 0xFF, 0xFF,
        0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xE7, 0x00, 0xDB, 0x04, 0xDB, 0x04, 0x04, 0x00, 0xFF, 0xFF,
        0xCD, 0x01, 0xB5, 0x09, 0xB5, 0x09, 0xCD, 0x31, 0xFD, 0x01, 0xFD, 0x01, 0x02, 0x03, 0xFD, 0xFE,
        0xBF, 0x7F, 0x60, 0xC0, 0xBF, 0xC0, 0xB7, 0xC8, 0xAB, 0xC4, 0xB7, 0xC0, 0xBF, 0xC0, 0xBF, 0xC0,
        0xFD, 0xFE, 0x02, 0x03, 0xFD, 0x01, 0x9D, 0x61, 0x6D, 0x11, 0x6D, 0x11, 0x9D, 0x01, 0xFD, 0x01,
        0xC3, 0x3C, 0xA8, 0x00, 0x94, 0x00, 0x7F, 0x00, 0x3C, 0x00, 0x3C, 0x00, 0x24, 0x00, 0x24, 0x00,
        0xC3, 0x3C, 0x28, 0x00, 0x14, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0xC3, 0x3C, 0x29, 0x00, 0x15, 0x00, 0xFE, 0x00, 0x3C, 0x00, 0x3C, 0x00, 0x24, 0x00, 0x24, 0x00,
        0xBF, 0xC0, 0xC7, 0xF8, 0xBB, 0xC4, 0xBB, 0xC4, 0xC7, 0x80, 0xBF, 0xC0, 0xBF, 0xC0, 0xBF, 0xC0,
        0xFD, 0x01, 0xFD, 0x01, 0xF3, 0x0D, 0xED, 0x01, 0xED, 0x01, 0xF1, 0x01, 0xFD, 0x01, 0xFD, 0x01,
        0x24, 0x00, 0x24, 0x00, 0x24, 0x00, 0x24, 0x00, 0x24, 0x00, 0x24, 0x00, 0x24, 0x00, 0x24, 0x00,
        0xBF, 0xC0, 0xB3, 0xCC, 0xAD, 0xC2, 0xAD, 0xC2, 0xB3, 0xC0, 0xBF, 0xC0, 0xBF, 0xC0, 0xBF, 0xC0,
        0xFD, 0x01, 0xFD, 0x01, 0xC3, 0x3D, 0xBD, 0x01, 0xBD, 0x01, 0xC1, 0x01, 0xFD, 0x01, 0xFD, 0x01,
        0x24, 0x00, 0x2C, 0x00, 0x34, 0x00, 0x2C, 0x00, 0x34, 0x00, 0x24, 0x00, 0x24, 0x00, 0x24, 0x00,
        0xB1, 0xCE, 0xAE, 0xC1, 0xAE, 0xC1, 0xAE, 0xC1, 0xB1, 0xC0, 0xBF, 0xC0, 0x40, 0xFF, 0xBF, 0x7F,
        0xFD, 0x01, 0xF1, 0x0D, 0xED, 0x01, 0xED, 0x01, 0xF1, 0x01, 0xFD, 0x01, 0x06, 0xFB, 0xFD, 0xFE,
        0xC3, 0x3C, 0x28, 0x00, 0x14, 0x00, 0xFF, 0x00, 0x3C, 0x00, 0x3C, 0x00, 0x24, 0x00, 0x24, 0x00,
        0xBF, 0x7F, 0x40, 0xC0, 0xBF, 0x80, 0xBF, 0x80, 0xB3, 0x8C, 0xAD, 0x90, 0xAD, 0x90, 0xB3, 0x80,
        0xFF, 0xFF, 0x20, 0x00, 0xDB, 0x20, 0xDB, 0x20, 0xE7, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00,
        0xFF, 0xFF, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00,
        0xFD, 0xFE, 0x02, 0x03, 0xB7, 0x41, 0xB5, 0x43, 0xCD, 0x03, 0xFD, 0x03, 0xFD, 0x03, 0xFD, 0x03,
        0xBF, 0x80, 0xBF, 0x80, 0xB7, 0x88, 0xAB, 0x90, 0xB7, 0x80, 0xFF, 0x80, 0x40, 0xFF, 0xBF, 0x7F,
        0xFF, 0x00, 0xFF, 0x00, 0xCF, 0x30, 0xB7, 0x40, 0xB7, 0x40, 0xB7, 0x40, 0x48, 0xF7, 0xFF, 0xFF,
        0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0xFF,
        0x8D, 0x73, 0x75, 0x83, 0x75, 0x83, 0x75, 0x83, 0x8D, 0x03, 0xFD, 0x03, 0x02, 0xFF, 0xFD, 0xFE,
        0xFF, 0xFF, 0x20, 0x00, 0xDB, 0x20, 0xDB, 0x20, 0xDB, 0x20, 0xDB, 0x20, 0xE7, 0x00, 0xFF, 0x00,
        0xFF, 0x00, 0xCF, 0x30, 0xB7, 0x40, 0xB7, 0x40, 0xCF, 0x00, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0xFF,
        0xBF, 0x7F, 0x4F, 0xF0, 0x81, 0xC0, 0xC3, 0x80, 0xC7, 0x80, 0xDF, 0x80, 0xBF, 0xC0, 0xBE, 0xC0,
        0xFD, 0xFE, 0x02, 0xFF, 0xFD, 0x03, 0xFB, 0x01, 0xE3, 0x01, 0x83, 0x01, 0x05, 0x03, 0x1D, 0x03,
        0xBC, 0xC0, 0xB0, 0xC0, 0x81, 0xC0, 0xC3, 0x80, 0xC7, 0x80, 0xDF, 0x80, 0xBF, 0xC0, 0xBE, 0xC0,
        0x7D, 0x03, 0xFD, 0x03, 0xFD, 0x03, 0xFB, 0x01, 0xE3, 0x01, 0x83, 0x01, 0x0D, 0x03, 0x3D, 0x03,
        0x7D, 0x03, 0xFD, 0x03, 0xFD, 0x03, 0xFB, 0x01, 0xE3, 0x01, 0x83, 0x01, 0x05, 0x03, 0x1D, 0x03,
        0x7F, 0xFF, 0xD0, 0x80, 0xD0, 0x80, 0xAF, 0xD0, 0x7F, 0xFF, 0xD2, 0xFF, 0xAD, 0xD2, 0xAD, 0xD2,
        0xFF, 0xFF, 0x5B, 0x01, 0x5B, 0x01, 0xA5, 0x5B, 0xFE, 0xFF, 0x4B, 0xFF, 0xB5, 0x4B, 0xB5, 0x4B,
        0xAD, 0xD2, 0xAD, 0xD2, 0xAD, 0xD2, 0x40, 0xFF, 0xD0, 0x80, 0xD0, 0x80, 0xAF, 0xD0, 0xFF, 0xFF,
        0xB5, 0x4B, 0xB5, 0x4B, 0xB5, 0x4B, 0x02, 0xFF, 0x5B, 0x01, 0x5B, 0x01, 0xA5, 0x5B, 0xFF, 0xFF,
        0xBC, 0xC0, 0xB0, 0xC0, 0x81, 0xC0, 0xC3, 0x80, 0xC7, 0x80, 0xFF, 0x80, 0x80, 0xFF, 0x7F, 0xFF,
        0x7D, 0x03, 0xFD, 0x03, 0xFD, 0x03, 0xFB, 0x01, 0xE3, 0x01, 0x87, 0x01, 0xF1, 0x0F, 0xFE, 0xFF,
        0xFF, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0xF8, 0x00, 0xE0, 0x00, 0x80, 0x00, 0x07, 0x00, 0x1F, 0x00,
        0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00,
        0x24, 0x00, 0xE7, 0x00, 0x24, 0x00, 0xE7, 0x00, 0x24, 0x00, 0xE7, 0x00, 0xE7, 0x00, 0xE7, 0x00,
        0xFC, 0x00, 0xF0, 0x00, 0xC1, 0x00, 0x03, 0x00, 0x0F, 0x00, 0x3F, 0x00, 0xFF, 0x00, 0xFE, 0x00,
        0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00,
        0xE7, 0x00, 0xE7, 0x00, 0xE7, 0x00, 0xE7, 0x00, 0xE7, 0x00, 0xE7, 0x00, 0xE7, 0x00, 0xE7, 0x00,
        0xE7, 0x00, 0xEF, 0x00, 0xF7, 0x00, 0xEF, 0x00, 0xF7, 0x00, 0xE7, 0x00, 0xE7, 0x00, 0xE7, 0x00,
        0xBC, 0xC0, 0x70, 0x80, 0xC1, 0x00, 0x03, 0x00, 0x0F, 0x00, 0x3F, 0x00, 0xFF, 0x00, 0xFE, 0x00,
        0x7F, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xF8, 0x00, 0xE0, 0x00, 0x80, 0x00, 0x0F, 0x00, 0x3F, 0x00,
        0x7F, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xF8, 0x00, 0xE0, 0x00, 0x80, 0x00, 0x07, 0x00, 0x1F, 0x00,
        0xFC, 0x00, 0xF0, 0x00, 0xC1, 0x00, 0x03, 0x00, 0x0F, 0x00, 0x38, 0x07, 0xF0, 0x08, 0xE0, 0x10,
        0x7F, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xF8, 0x00, 0xE0, 0x00, 0x40, 0x80, 0xAF, 0x40, 0x5F, 0x20,
        0xEA, 0x15, 0xE2, 0x10, 0xD0, 0x08, 0x05, 0x0A, 0x0F, 0x00, 0x1F, 0x00, 0xFF, 0x00, 0xFE, 0x00,
        0xDF, 0x20, 0x5F, 0x20, 0xBF, 0x40, 0x78, 0x80, 0xE0, 0x00, 0x80, 0x00, 0x07, 0x00, 0x1F, 0x00,
        0xFC, 0x00, 0xF0, 0x00, 0xC1, 0x00, 0x03, 0x00, 0x07, 0x00, 0x1F, 0x00, 0xFF, 0x00, 0xFE, 0x00,
        0xFF, 0xFF, 0x0F, 0xF0, 0xC1, 0x00, 0x03, 0x00, 0x07, 0x00, 0x1F, 0x00, 0xFF, 0x00, 0xFE, 0x00,
        0xFF, 0xFF, 0x3E, 0xC1, 0xC1, 0x00, 0x03, 0x00, 0x07, 0x00, 0x1F, 0x00, 0xFF, 0x00, 0xFE, 0x00,
        0x7D, 0x03, 0xFE, 0x01, 0xFF, 0x00, 0xFC, 0x00, 0xE0, 0x00, 0x80, 0x00, 0x07, 0x00, 0x1F, 0x00
    }
};
