effect give @s invisibility 1 0 true
effect give @s speed 1 0 true
scoreboard players remove @s invisibility 1

execute if score @s invisibility matches 0 run function module/invisibility/remove

execute unless data entity @s SelectedItem.tag.gun run function module/invisibility/print