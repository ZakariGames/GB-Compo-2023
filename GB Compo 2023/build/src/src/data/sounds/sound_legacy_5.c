#pragma bank 255

#include <gbdk/platform.h>
#include <stdint.h>

BANKREF(sound_legacy_5)
const uint8_t sound_legacy_5[] = {
0xF1, 0b01111011,0x01,0xF2,0x2C,0xC0,
0x70,
0x01, 0b00101011, 0x00,0xc0,      //shut ch4
0x01, 0b00000111,                 //stop
};
void AT(0b00001000) __mute_mask_sound_legacy_5;