#pragma bank 255

// Scene: Scene 1
// Triggers

#include "gbs_types.h"
#include "data/trigger_0_interact.h"

BANKREF(scene_1_triggers)

const struct trigger_t scene_1_triggers[] = {
    {
        // Trigger 1,
        .x = 54,
        .y = 0,
        .width = 6,
        .height = 14,
        .script = TO_FAR_PTR_T(trigger_0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
