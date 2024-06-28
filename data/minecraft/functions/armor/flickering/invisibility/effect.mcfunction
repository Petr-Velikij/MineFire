effect give @s invisibility 1 0 true
effect clear @s glowing
scoreboard players remove @s invisibility 1
execute if score @s invisibility matches 0 run function armor/flickering/invisibility/remove
execute if score @s PKM_2 matches 1.. run function armor/flickering/invisibility/remove

execute unless data entity @s SelectedItem.tag.gun run function module/invisibility/print