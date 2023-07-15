#pragma bank 255

// Scene: Town
// Sprites

#include "gbs_types.h"
#include "data/sprite_villager_frog.h"

BANKREF(scene_1_sprites)

const far_ptr_t scene_1_sprites[] = {
    TO_FAR_PTR_T(sprite_villager_frog)
};
