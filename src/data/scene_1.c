#pragma bank 255

// Scene: Scene 1

#include "gbs_types.h"
#include "data/bg_2.h"
#include "data/scene_1_collisions.h"
#include "data/palette_0.h"
#include "data/palette_2.h"
#include "data/sprite_mario_animated6.h"
#include "data/scene_1_triggers.h"
#include "data/scene_1_init.h"

BANKREF(scene_1)

const struct scene_t scene_1 = {
    .width = 60,
    .height = 18,
    .type = SCENE_TYPE_PLATFORM,
    .background = TO_FAR_PTR_T(bg_2),
    .collisions = TO_FAR_PTR_T(scene_1_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_0),
    .sprite_palette = TO_FAR_PTR_T(palette_2),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_mario_animated6),
    .n_actors = 0,
    .n_triggers = 1,
    .n_sprites = 0,
    .n_projectiles = 0,
    .triggers = TO_FAR_PTR_T(scene_1_triggers),
    .script_init = TO_FAR_PTR_T(scene_1_init)
};
