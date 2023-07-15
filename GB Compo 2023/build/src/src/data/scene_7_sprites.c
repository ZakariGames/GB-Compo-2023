#pragma bank 255

// Scene: Wall Jump
// Sprites

#include "gbs_types.h"
#include "data/sprite_gb_heart.h"
#include "data/sprite_elements.h"
#include "data/sprite_actor_animated.h"
#include "data/sprite_static.h"

BANKREF(scene_7_sprites)

const far_ptr_t scene_7_sprites[] = {
    TO_FAR_PTR_T(sprite_gb_heart),
    TO_FAR_PTR_T(sprite_elements),
    TO_FAR_PTR_T(sprite_actor_animated),
    TO_FAR_PTR_T(sprite_static)
};
