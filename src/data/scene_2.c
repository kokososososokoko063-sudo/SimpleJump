#pragma bank 255

// Scene: Scene 2

#include "gbs_types.h"
#include "data/bg_placeholder.h"
#include "data/scene_2_collisions.h"
#include "data/palette_1.h"
#include "data/palette_2.h"
#include "data/sprite_mario_animated6.h"
#include "data/scene_2_init.h"

BANKREF(scene_2)

const struct scene_t scene_2 = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_PLATFORM,
    .background = TO_FAR_PTR_T(bg_placeholder),
    .collisions = TO_FAR_PTR_T(scene_2_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_1),
    .sprite_palette = TO_FAR_PTR_T(palette_2),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_mario_animated6),
    .n_actors = 0,
    .n_triggers = 0,
    .n_sprites = 0,
    .n_projectiles = 0,
    .script_init = TO_FAR_PTR_T(scene_2_init)
};
