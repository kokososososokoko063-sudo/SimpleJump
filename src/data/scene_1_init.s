.module scene_1_init

.include "vm.i"
.include "data/game_globals.i"

.globl _fade_frames_per_step

.area _CODE_255


___bank_scene_1_init = 255
.globl ___bank_scene_1_init

_scene_1_init::
        VM_LOCK

GBVM$scene_1_init$89d09bb7_6f6b_491a_a8b7_ffee3e710b14$8ea6bd24_bed7_44c7_a96b_e9992dc8cb4b$scene$8ea6bd24_bed7_44c7_a96b_e9992dc8cb4b$script = .
.globl GBVM$scene_1_init$89d09bb7_6f6b_491a_a8b7_ffee3e710b14$8ea6bd24_bed7_44c7_a96b_e9992dc8cb4b$scene$8ea6bd24_bed7_44c7_a96b_e9992dc8cb4b$script
        ; Music Play
        VM_MUSIC_PLAY           ___bank_song_template_Data, _song_template_Data, .MUSIC_NO_LOOP

GBVM$scene_1_init$autofade$8ea6bd24_bed7_44c7_a96b_e9992dc8cb4b$scene$8ea6bd24_bed7_44c7_a96b_e9992dc8cb4b$script = .
.globl GBVM$scene_1_init$autofade$8ea6bd24_bed7_44c7_a96b_e9992dc8cb4b$scene$8ea6bd24_bed7_44c7_a96b_e9992dc8cb4b$script
        ; Wait 1 Frames
        VM_IDLE

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

GBVM$scene_1_init$2bf1e7be_9857_448d_814e_9664bfc00b3f$8ea6bd24_bed7_44c7_a96b_e9992dc8cb4b$scene$8ea6bd24_bed7_44c7_a96b_e9992dc8cb4b$script = .
.globl GBVM$scene_1_init$2bf1e7be_9857_448d_814e_9664bfc00b3f$8ea6bd24_bed7_44c7_a96b_e9992dc8cb4b$scene$8ea6bd24_bed7_44c7_a96b_e9992dc8cb4b$script
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "hello"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Stop Script
        VM_STOP
