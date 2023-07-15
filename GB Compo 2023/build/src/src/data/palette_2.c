#pragma bank 255

// Palette: 2

#include "gbs_types.h"

BANKREF(palette_2)

const struct palette_t palette_2 = {
    .mask = 0xFF,
    .palette = {
        DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_BLACK),
        DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_DARK_GRAY, DMG_BLACK)
    },
    .cgb_palette = {
        CGB_PALETTE(RGB(31, 31, 29), RGB(31, 31, 29), RGB(31, 4, 1), RGB(5, 2, 6)),
        CGB_PALETTE(RGB(31, 31, 29), RGB(31, 31, 29), RGB(31, 23, 1), RGB(5, 2, 6)),
        CGB_PALETTE(RGB(31, 31, 29), RGB(31, 31, 29), RGB(7, 3, 30), RGB(5, 2, 6)),
        CGB_PALETTE(RGB(31, 31, 29), RGB(31, 31, 29), RGB(31, 4, 1), RGB(5, 2, 6)),
        CGB_PALETTE(RGB(31, 31, 29), RGB(31, 31, 29), RGB(31, 4, 1), RGB(5, 2, 6)),
        CGB_PALETTE(RGB(31, 31, 29), RGB(31, 31, 29), RGB(31, 4, 1), RGB(5, 2, 6)),
        CGB_PALETTE(RGB(31, 31, 29), RGB(31, 31, 29), RGB(31, 4, 1), RGB(5, 2, 6)),
        CGB_PALETTE(RGB(31, 31, 29), RGB(31, 31, 29), RGB(31, 4, 1), RGB(5, 2, 6))
    }
};
