#pragma bank 255

#include <gbdk/platform.h>
#include <stdint.h>

BANKREF(sound_legacy_3)
const uint8_t sound_legacy_3[] = {
0xF1, 0b01111011,0x01,0xF2,0x13,0x80,
0x70,
0x01, 0b00101011, 0x00,0xc0,      //shut ch4
0x01, 0b00000111,                 //stop
};
void AT(0b00001000) __mute_mask_sound_legacy_3;