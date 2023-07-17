#pragma bank 255

// Palette: 1

#include "gbs_types.h"

BANKREF(palette_1)

const struct palette_t palette_1 = {
    .mask = 0xFF,
    .palette = {
        DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_BLACK),
        DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_DARK_GRAY, DMG_BLACK)
    },
    .cgb_palette = {
        CGB_PALETTE(RGB(31, 31, 29), RGB(31, 31, 29), RGB(31, 4, 1), RGB(5, 2, 6)),
        CGB_PALETTE(RGB(31, 31, 29), RGB(31, 31, 29), RGB(31, 4, 1), RGB(5, 2, 6)),
        CGB_PALETTE(RGB(31, 31, 29), RGB(31, 31, 29), RGB(31, 4, 1), RGB(5, 2, 6)),
        CGB_PALETTE(RGB(31, 31, 29), RGB(31, 31, 29), RGB(31, 4, 1), RGB(5, 2, 6)),
        CGB_PALETTE(RGB(31, 31, 29), RGB(31, 31, 29), RGB(31, 4, 1), RGB(5, 2, 6)),
        CGB_PALETTE(RGB(31, 31, 29), RGB(31, 31, 29), RGB(31, 4, 1), RGB(5, 2, 6)),
        CGB_PALETTE(RGB(31, 31, 29), RGB(31, 31, 29), RGB(31, 4, 1), RGB(5, 2, 6)),
        CGB_PALETTE(RGB(31, 31, 29), RGB(31, 31, 29), RGB(31, 4, 1), RGB(5, 2, 6))
    }
};
