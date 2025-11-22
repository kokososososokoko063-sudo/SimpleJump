#pragma bank 255

// Background: 2

#include "gbs_types.h"
#include "data/bg_2_tileset.h"
#include "data/bg_2_tilemap.h"
#include "data/bg_2_tilemap_attr.h"

BANKREF(bg_2)

const struct background_t bg_2 = {
    .width = 60,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_2_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_2_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_2_tilemap_attr)
};
