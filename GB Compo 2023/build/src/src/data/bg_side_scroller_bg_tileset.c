#pragma bank 255

// Tileset: bg_side_scroller_bg_tileset

#include "gbs_types.h"

BANKREF(bg_side_scroller_bg_tileset)

const struct tileset_t bg_side_scroller_bg_tileset = {
    .n_tiles = 77,
    .tiles = {
        0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x80, 0x00, 0xF0, 0x00, 0x7E, 0x00, 0x0F, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0xFF, 0x00, 0xFC, 0x00, 0x20, 0x00, 0x20, 0x00, 0x50, 0x00,
        0x0E, 0x00, 0x7C, 0x00, 0xF0, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0xFF, 0x00, 0xFC, 0x00,
        0x00, 0x00, 0x01, 0x00, 0x03, 0x00, 0x0E, 0x00, 0x7C, 0x00, 0xF0, 0x00, 0x80, 0x00, 0x00, 0x00,
        0xD8, 0x00, 0x8C, 0x00, 0x06, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0xF0, 0x00, 0x7E, 0x00, 0x0F, 0x00, 0x01, 0x00,
        0xC0, 0x00, 0xF0, 0x00, 0x3C, 0x00, 0x0F, 0x00, 0x03, 0x00, 0x00, 0x00, 0x07, 0x00, 0xF8, 0x00,
        0x00, 0x00, 0x03, 0x00, 0x0F, 0x00, 0xFC, 0x00, 0xF0, 0x00, 0xF0, 0x00, 0x0E, 0x00, 0x01, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x01, 0x00, 0x02, 0x00, 0x04, 0x00, 0x08, 0x00, 0x10, 0x00, 0x20, 0x00, 0x4C, 0x00, 0x80, 0x00,
        0x80, 0x00, 0xC0, 0x00, 0x60, 0x00, 0x70, 0x00, 0x38, 0x00, 0x3C, 0x00, 0x1E, 0x00, 0x7F, 0x00,
        0x01, 0x00, 0x03, 0x00, 0x06, 0x00, 0x0E, 0x00, 0x1C, 0x00, 0x3C, 0x00, 0x78, 0x00, 0xFE, 0x00,
        0x80, 0x00, 0x40, 0x00, 0x20, 0x00, 0x10, 0x00, 0x08, 0x00, 0x04, 0x00, 0x32, 0x00, 0x01, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x18, 0x00, 0xE0, 0x00, 0x00, 0x00,
        0x01, 0x00, 0x02, 0x00, 0x04, 0x00, 0xFF, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x00, 0xF8, 0x00, 0x1F, 0x00, 0x07, 0x00,
        0x0F, 0x00, 0x0F, 0x00, 0x67, 0x00, 0x07, 0x00, 0x03, 0x00, 0x03, 0x00, 0x01, 0x00, 0xFF, 0x00,
        0x80, 0x00, 0xC0, 0x00, 0xE0, 0x00, 0xF0, 0x00, 0xFF, 0x00, 0xF8, 0x00, 0xE0, 0x00, 0x00, 0x00,
        0x01, 0x00, 0x03, 0x00, 0x07, 0x00, 0x0F, 0x00, 0xFF, 0x00, 0x1F, 0x00, 0x07, 0x00, 0x00, 0x00,
        0xF0, 0x00, 0xF0, 0x00, 0xE6, 0x00, 0xE0, 0x00, 0xC0, 0x00, 0xC0, 0x00, 0x80, 0x00, 0xFF, 0x00,
        0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x1F, 0x00, 0xF8, 0x00, 0xE0, 0x00,
        0x80, 0x00, 0x40, 0x00, 0x20, 0x00, 0xFF, 0x00, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x18, 0x00, 0x07, 0x00, 0x00, 0x00,
        0xBF, 0x7F, 0x40, 0xC0, 0xBF, 0x80, 0xBF, 0x80, 0xBF, 0x80, 0xBF, 0x80, 0xBF, 0x80, 0xBF, 0x80,
        0xFF, 0xFF, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00,
        0xFF, 0xFF, 0x00, 0x00, 0xBB, 0x40, 0xBB, 0x40, 0xBB, 0x40, 0xC7, 0x00, 0xFF, 0x00, 0xFF, 0x00,
        0xFF, 0xFF, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xF3, 0x0C, 0xED, 0x10, 0xED, 0x10, 0xF3, 0x00,
        0xFD, 0xFE, 0x02, 0x03, 0xFD, 0x01, 0xFD, 0x01, 0xFD, 0x01, 0xFD, 0x01, 0xFD, 0x01, 0xFD, 0x01,
        0xBF, 0x80, 0xBF, 0x80, 0xBF, 0x80, 0xBF, 0x80, 0xBF, 0x80, 0xFF, 0x80, 0x40, 0xFF, 0xBF, 0x7F,
        0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0xFF,
        0xFF, 0x00, 0xF3, 0x0C, 0xED, 0x10, 0xED, 0x10, 0xF3, 0x00, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0xFF,
        0xFF, 0x00, 0xFF, 0x00, 0xF7, 0x08, 0xEB, 0x10, 0xF7, 0x00, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0xFF,
        0xFD, 0x01, 0xFD, 0x01, 0xFD, 0x01, 0xFD, 0x01, 0xFD, 0x01, 0xFF, 0x01, 0x02, 0xFF, 0xFD, 0xFE,
        0xFF, 0xFF, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xCF, 0x30, 0xB7, 0x08, 0xB7, 0x08, 0xCF, 0x00,
        0xFF, 0xFF, 0x20, 0x00, 0xDB, 0x20, 0xDB, 0x20, 0xDB, 0x20, 0xDB, 0x20, 0xE7, 0x00, 0xFF, 0x00,
        0xFD, 0xFE, 0x02, 0x03, 0xB7, 0x41, 0xB5, 0x43, 0xCD, 0x03, 0xFD, 0x03, 0xFD, 0x03, 0xFD, 0x03,
        0xBF, 0x7F, 0x40, 0xC0, 0xBF, 0x80, 0xBF, 0x80, 0xB3, 0x8C, 0xAD, 0x90, 0xAD, 0x90, 0xB3, 0x80,
        0xBF, 0x7F, 0x4F, 0xF0, 0x81, 0xC0, 0xC3, 0x80, 0xC7, 0x80, 0xDF, 0x80, 0xBF, 0xC0, 0xBE, 0xC0,
        0xFF, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0xF8, 0x00, 0xE0, 0x00, 0x80, 0x00, 0x07, 0x00, 0x1F, 0x00,
        0xFF, 0xFF, 0x0F, 0xF0, 0xC1, 0x00, 0x03, 0x00, 0x07, 0x00, 0x1F, 0x00, 0xFF, 0x00, 0xFE, 0x00,
        0xFF, 0xFF, 0x3E, 0xC1, 0xC1, 0x00, 0x03, 0x00, 0x07, 0x00, 0x1F, 0x00, 0xFF, 0x00, 0xFE, 0x00,
        0xFD, 0xFE, 0x02, 0xFF, 0xFD, 0x03, 0xFB, 0x01, 0xE3, 0x01, 0x83, 0x01, 0x05, 0x03, 0x1D, 0x03,
        0xFF, 0x00, 0xFF, 0x00, 0xEF, 0x10, 0xD7, 0x08, 0xEF, 0x00, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0xFF,
        0xFF, 0x00, 0xCF, 0x30, 0xB7, 0x40, 0xB7, 0x40, 0xCF, 0x00, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0xFF,
        0x8D, 0x73, 0x75, 0x83, 0x75, 0x83, 0x75, 0x83, 0x8D, 0x03, 0xFD, 0x03, 0x02, 0xFF, 0xFD, 0xFE,
        0xBF, 0x80, 0xBF, 0x80, 0xB7, 0x88, 0xAB, 0x90, 0xB7, 0x80, 0xFF, 0x80, 0x40, 0xFF, 0xBF, 0x7F,
        0xBC, 0xC0, 0xB0, 0xC0, 0x81, 0xC0, 0xC3, 0x80, 0xC7, 0x80, 0xDF, 0x80, 0xBF, 0xC0, 0xBE, 0xC0,
        0x7F, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xF8, 0x00, 0xE0, 0x00, 0x80, 0x00, 0x07, 0x00, 0x1F, 0x00,
        0xFC, 0x00, 0xF0, 0x00, 0xC1, 0x00, 0x03, 0x00, 0x07, 0x00, 0x1F, 0x00, 0xFF, 0x00, 0xFE, 0x00,
        0x7D, 0x03, 0xFD, 0x03, 0xFD, 0x03, 0xFB, 0x01, 0xE3, 0x01, 0x83, 0x01, 0x05, 0x03, 0x1D, 0x03,
        0x10, 0x00, 0x10, 0x00, 0x28, 0x00, 0x28, 0x00, 0x10, 0x00, 0x10, 0x00, 0x28, 0x00, 0x28, 0x00,
        0x7F, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xF8, 0x00, 0xE0, 0x00, 0x80, 0x00, 0x0F, 0x00, 0x3F, 0x00,
        0xFC, 0x00, 0xF0, 0x00, 0xC1, 0x00, 0x03, 0x00, 0x0F, 0x00, 0x3F, 0x00, 0xFF, 0x00, 0xFE, 0x00,
        0x7D, 0x03, 0xFE, 0x01, 0xFF, 0x00, 0xFC, 0x00, 0xE0, 0x00, 0x80, 0x00, 0x07, 0x00, 0x1F, 0x00,
        0x10, 0x00, 0x10, 0x00, 0x28, 0x00, 0x28, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x3C, 0x00, 0x46, 0x00, 0x56, 0x00, 0x83, 0x00, 0xA3, 0x00, 0x87, 0x00, 0x93, 0x00, 0x83, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x09, 0x00, 0x09, 0x00, 0x09, 0x00,
        0xBC, 0xC0, 0x70, 0x80, 0xC1, 0x00, 0x03, 0x00, 0x0F, 0x00, 0x3F, 0x00, 0xFF, 0x00, 0xFE, 0x00,
        0x83, 0x00, 0x87, 0x00, 0xA3, 0x00, 0x83, 0x00, 0x8B, 0x00, 0x83, 0x00, 0xA7, 0x00, 0x83, 0x00,
        0x11, 0x00, 0xE5, 0x00, 0x41, 0x00, 0x13, 0x00, 0x06, 0x00, 0xFC, 0x00, 0xF8, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x00, 0x90, 0x00, 0x90, 0x00, 0x90, 0x00,
        0x88, 0x00, 0xA7, 0x00, 0x80, 0x00, 0xC8, 0x00, 0x60, 0x00, 0x3F, 0x00, 0x1F, 0x00, 0x00, 0x00,
        0x93, 0x00, 0x87, 0x00, 0x03, 0x00, 0x2B, 0x00, 0x03, 0x00, 0x07, 0x00, 0x93, 0x00, 0x83, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x10, 0x00, 0x20, 0x00, 0x41, 0x00, 0xF2, 0x00, 0x9D, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0xC0, 0x00, 0xA0, 0x00, 0x50, 0x00, 0x98, 0x00, 0x38, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x38, 0x00, 0x4C, 0x00, 0xBC, 0x00, 0xDE, 0x00,
        0x83, 0x00, 0xA3, 0x00, 0x8B, 0x00, 0x83, 0x00, 0x93, 0x00, 0x87, 0x00, 0xA3, 0x00, 0x83, 0x00,
        0xA6, 0x00, 0xC1, 0x00, 0x82, 0x00, 0x85, 0x00, 0x8A, 0x00, 0x94, 0x00, 0xA8, 0x00, 0xD0, 0x00,
        0x78, 0x00, 0xF8, 0x00, 0xE4, 0x00, 0xCA, 0x00, 0x93, 0x00, 0xE5, 0x00, 0x99, 0x00, 0x87, 0x00,
        0x60, 0x00, 0x50, 0x00, 0x2F, 0x00, 0x10, 0x00, 0x7A, 0x00, 0xD0, 0x00, 0x83, 0x00, 0x56, 0x00,
        0x30, 0x00, 0xD0, 0x00, 0x20, 0x00, 0xC0, 0x00, 0x80, 0x00, 0xEC, 0x00, 0xB6, 0x00, 0x4A, 0x00,
        0x7D, 0x03, 0xFD, 0x03, 0xFD, 0x03, 0xFB, 0x01, 0xE3, 0x01, 0x83, 0x01, 0x0D, 0x03, 0x3D, 0x03,
        0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00,
        0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00
    }
};
