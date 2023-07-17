#pragma bank 255

// Scene: Skill Tests
// Sprites

#include "gbs_types.h"
#include "data/sprite_villager_bunny.h"
#include "data/sprite_gb_heart.h"
#include "data/sprite_elements.h"
#include "data/sprite_villager_cat.h"
#include "data/sprite_bullet.h"
#include "data/sprite_bone_shield.h"
#include "data/sprite_static.h"
#include "data/sprite_actor.h"

BANKREF(scene_5_sprites)

const far_ptr_t scene_5_sprites[] = {
    TO_FAR_PTR_T(sprite_villager_bunny),
    TO_FAR_PTR_T(sprite_gb_heart),
    TO_FAR_PTR_T(sprite_elements),
    TO_FAR_PTR_T(sprite_villager_cat),
    TO_FAR_PTR_T(sprite_bullet),
    TO_FAR_PTR_T(sprite_bone_shield),
    TO_FAR_PTR_T(sprite_static),
    TO_FAR_PTR_T(sprite_actor)
};
