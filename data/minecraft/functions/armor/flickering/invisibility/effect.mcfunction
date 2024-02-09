effect give @s invisibility 1 0 true
scoreboard players remove @s invisibility 1
execute if score @s invisibility matches 0 run function armor/flickering/invisibility/remove

execute unless data entity @s SelectedItem.tag.gun run function module/invisibility/print