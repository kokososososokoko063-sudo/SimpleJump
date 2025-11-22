.module scene_2_init

.include "vm.i"
.include "data/game_globals.i"

.globl _fade_frames_per_step

.area _CODE_255


___bank_scene_2_init = 255
.globl ___bank_scene_2_init

_scene_2_init::
        VM_LOCK

GBVM$scene_2_init$autofade$33e72cbf_0341_46b6_b6e8_e567b0a05825$scene$33e72cbf_0341_46b6_b6e8_e567b0a05825$script = .
.globl GBVM$scene_2_init$autofade$33e72cbf_0341_46b6_b6e8_e567b0a05825$scene$33e72cbf_0341_46b6_b6e8_e567b0a05825$script
        ; Wait 1 Frames
        VM_IDLE

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

GBVM$scene_2_init$23bb2a86_953b_4434_b73f_872554d28bcf$33e72cbf_0341_46b6_b6e8_e567b0a05825$scene$33e72cbf_0341_46b6_b6e8_e567b0a05825$script = .
.globl GBVM$scene_2_init$23bb2a86_953b_4434_b73f_872554d28bcf$33e72cbf_0341_46b6_b6e8_e567b0a05825$scene$33e72cbf_0341_46b6_b6e8_e567b0a05825$script
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "what"
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
