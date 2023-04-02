effect give @s invisibility 1 0 true
effect give @s speed 1 2 true
scoreboard players remove @s camouflage 1
execute if score @s Scatter matches 30.. run particle minecraft:mycelium ~ ~0.7 ~ 0.3 0.5 0.3 0 20 force @a[distance=..150]

execute if score @s camouflage matches 0 run scoreboard players set @s module_cooldown 800
execute unless score @s damage_taken matches 0 run scoreboard players set @s module_cooldown 1200

execute unless score @s module_cooldown matches 0 run function module/chameleon/remove
execute unless data entity @s SelectedItem.tag.gun run function module/chameleon/print