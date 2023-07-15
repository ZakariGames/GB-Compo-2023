#pragma bank 255

// Scene: Platformer
// Sprites

#include "gbs_types.h"
#include "data/sprite_villager_bunny.h"
#include "data/sprite_villager_ram.h"
#include "data/sprite_static.h"
#include "data/sprite_actor.h"

BANKREF(scene_4_sprites)

const far_ptr_t scene_4_sprites[] = {
    TO_FAR_PTR_T(sprite_villager_bunny),
    TO_FAR_PTR_T(sprite_villager_ram),
    TO_FAR_PTR_T(sprite_static),
    TO_FAR_PTR_T(sprite_actor)
};
