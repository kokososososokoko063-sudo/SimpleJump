.module trigger_0_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, _camera_settings, ___bank_scene_2, _scene_2

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_trigger_0_interact = 255
.globl ___bank_trigger_0_interact

_trigger_0_interact::
        VM_LOCK

        VM_RESERVE              4

GBVM$trigger_0_interact$b7978165_3788_44a6_bab9_0d31c8fce168$8ea6bd24_bed7_44c7_a96b_e9992dc8cb4b$trigger$4067b93f_3ab1_4c30_8eb7_593d593798e4$script = .
.globl GBVM$trigger_0_interact$b7978165_3788_44a6_bab9_0d31c8fce168$8ea6bd24_bed7_44c7_a96b_e9992dc8cb4b$trigger$4067b93f_3ab1_4c30_8eb7_593d593798e4$script
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Actor Emote
        VM_ACTOR_EMOTE          .LOCAL_ACTOR, ___bank_emote_shock, _emote_shock

GBVM$trigger_0_interact$eb60d1f9_f980_4de5_9ed5_96d7e267d408$8ea6bd24_bed7_44c7_a96b_e9992dc8cb4b$trigger$4067b93f_3ab1_4c30_8eb7_593d593798e4$script = .
.globl GBVM$trigger_0_interact$eb60d1f9_f980_4de5_9ed5_96d7e267d408$8ea6bd24_bed7_44c7_a96b_e9992dc8cb4b$trigger$4067b93f_3ab1_4c30_8eb7_593d593798e4$script
        ; Sound Play Crash
        VM_SFX_PLAY             ___bank_sound_legacy_0, _sound_legacy_0, ___mute_mask_sound_legacy_0, .SFX_PRIORITY_NORMAL

GBVM$trigger_0_interact$275ddaf3_4bd0_4fb1_8f50_a5714d7e7bde$8ea6bd24_bed7_44c7_a96b_e9992dc8cb4b$trigger$4067b93f_3ab1_4c30_8eb7_593d593798e4$script = .
.globl GBVM$trigger_0_interact$275ddaf3_4bd0_4fb1_8f50_a5714d7e7bde$8ea6bd24_bed7_44c7_a96b_e9992dc8cb4b$trigger$4067b93f_3ab1_4c30_8eb7_593d593798e4$script
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    0
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    1792
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_DOWN
        VM_SET_CONST_INT8       _camera_settings, .CAMERA_LOCK
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_2

        ; Stop Script
        VM_STOP
