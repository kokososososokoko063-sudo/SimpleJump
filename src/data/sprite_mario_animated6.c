#pragma bank 255
// SpriteSheet: mario_animated6

#include "gbs_types.h"
#include "data/sprite_mario_animated6_tileset.h"


BANKREF(sprite_mario_animated6)

#define SPRITE_0_STATE_DEFAULT 0

const metasprite_t sprite_mario_animated6_metasprite_0[]  = {
    { 0, 0, 4, 32 }, { 0, 8, 6, 32 },
    {metasprite_end}
};

const metasprite_t sprite_mario_animated6_metasprite_1[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t sprite_mario_animated6_metasprite_2[]  = {
    { 0, 8, 4, 0 }, { 0, -8, 6, 0 },
    {metasprite_end}
};

const metasprite_t sprite_mario_animated6_metasprite_3[]  = {
    { 0, 0, 0, 32 }, { 0, 8, 2, 32 },
    {metasprite_end}
};

const metasprite_t sprite_mario_animated6_metasprite_4[]  = {
    { 0, 8, 8, 0 }, { 0, -8, 10, 0 },
    {metasprite_end}
};

const metasprite_t sprite_mario_animated6_metasprite_5[]  = {
    { 0, 8, 12, 0 }, { 0, -8, 14, 0 },
    {metasprite_end}
};

const metasprite_t sprite_mario_animated6_metasprite_6[]  = {
    { 0, 8, 16, 0 }, { 0, -8, 18, 0 },
    {metasprite_end}
};

const metasprite_t sprite_mario_animated6_metasprite_7[]  = {
    { 0, 0, 8, 32 }, { 0, 8, 10, 32 },
    {metasprite_end}
};

const metasprite_t sprite_mario_animated6_metasprite_8[]  = {
    { 0, 0, 12, 32 }, { 0, 8, 14, 32 },
    {metasprite_end}
};

const metasprite_t sprite_mario_animated6_metasprite_9[]  = {
    { 0, 0, 16, 32 }, { 0, 8, 18, 32 },
    {metasprite_end}
};

const metasprite_t * const sprite_mario_animated6_metasprites[] = {
    sprite_mario_animated6_metasprite_0,
    sprite_mario_animated6_metasprite_1,
    sprite_mario_animated6_metasprite_2,
    sprite_mario_animated6_metasprite_3,
    sprite_mario_animated6_metasprite_4,
    sprite_mario_animated6_metasprite_5,
    sprite_mario_animated6_metasprite_6,
    sprite_mario_animated6_metasprite_7,
    sprite_mario_animated6_metasprite_8,
    sprite_mario_animated6_metasprite_9
};

const struct animation_t sprite_mario_animated6_animations[] = {
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 1,
        .end = 1
    },
    {
        .start = 2,
        .end = 2
    },
    {
        .start = 3,
        .end = 3
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 4,
        .end = 6
    },
    {
        .start = 2,
        .end = 2
    },
    {
        .start = 7,
        .end = 9
    }
};

const UWORD sprite_mario_animated6_animations_lookup[] = {
    SPRITE_0_STATE_DEFAULT
};

const struct spritesheet_t sprite_mario_animated6 = {
    .n_metasprites = 10,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = sprite_mario_animated6_metasprites,
    .animations = sprite_mario_animated6_animations,
    .animations_lookup = sprite_mario_animated6_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(sprite_mario_animated6_tileset),
    .cgb_tileset = { NULL, NULL }
};
