effect give @s invisibility 1 0 true
scoreboard players remove @s invisibility 1

execute unless score @s PKM_2 matches 0 run scoreboard players set @s invisibility 0
execute if score @s invisibility matches 0 run function module/invisibility/remove

execute unless data entity @s SelectedItem.tag.gun run function module/invisibility/print