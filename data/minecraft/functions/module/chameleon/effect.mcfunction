effect give @s invisibility 1 0 true
effect give @s speed 1 0 true
scoreboard players remove @s camouflage 1

execute unless score @s PKM_2 matches 0 run scoreboard players set @s module_cooldown 800
execute if score @s camouflage matches 0 run scoreboard players set @s module_cooldown 800
execute unless score @s damage_taken matches 0 run scoreboard players set @s module_cooldown 1200

execute unless score @s module_cooldown matches 0 run function module/chameleon/remove
execute unless data entity @s SelectedItem.tag.gun run function module/chameleon/print