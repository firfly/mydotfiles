#!/bin/bash

SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10" "11" "12" "13" "14" "15")

# Destroy space on right click, focus space on left click.
# New space by left clicking separator (>)

sketchybar --add event aerospace_workspace_change

# sid=0
# spaces=()
# # for i in "${!SPACE_ICONS[@]}"
# for i in $(aerospace list-workspaces --all); do
#   # sid=$(($i+1))
#   sid=$i
#
#   space=(
#     associated_space=$sid
#     icon=${SPACE_ICONS[i]}
#     icon.padding_left=10
#     icon.padding_right=15
#     padding_left=2
#     padding_right=2
#     label.padding_right=20
#     icon.highlight_color=$RED
#     label.font="sketchybar-app-font:Regular:16.0"
#     label.background.height=26
#     label.background.drawing=on
#     label.background.color=$BACKGROUND_2
#     label.background.corner_radius=8
#     label.drawing=off
#     script="$PLUGIN_DIR/space.sh"
#   )
#
#   sketchybar --add space space.$sid left    \
#              --set space.$sid "${space[@]}" \
#              --subscribe space.$sid aerospace_workspace_change
#              label="$sid" \
#              click_script="aerospace workspace $sid" \
#              script="$ITEM_DIR/aerospace.sh $sid"
# done
#
for sid in $(aerospace list-workspaces --all); do
    sketchybar --add item space.$sid left \
        --subscribe space.$sid aerospace_workspace_change \
        --set space.$sid \
    associated_space=$sid
    icon=$sid
    icon.padding_left=10
    icon.padding_right=15
    padding_left=2
    padding_right=2
    label.padding_right=20
        background.color=$BACKGROUND_2 \
        background.corner_radius=8 \
        background.height=26 \
        background.drawing=on \
        label="$sid" \
        click_script="aerospace workspace $sid" \
        script="$CONFIG_DIR/plugins/aerospace.sh $sid"
done


spaces=(
  background.color=$BACKGROUND_1
  background.border_color=$BACKGROUND_2
  background.border_width=2
  background.drawing=on
)

separator=(
  icon=􀆊
  icon.font="$FONT:Heavy:16.0"
  padding_left=15
  padding_right=15
  label.drawing=off
  associated_display=active
  # click_script='yabai -m space --create && sketchybar --trigger space_change'
  click_script='aerospace list-workspaces --focused && sketchybar --trigger space_change'
  icon.color=$WHITE
)

sketchybar --add bracket spaces '/space\..*/' \
           --set spaces "${spaces[@]}"        \
                                              \
           --add item separator left          \
           --set separator "${separator[@]}"
