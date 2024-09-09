scoreboard players set Power varTime 0

execute if score @s ID.gun matches 1..4 run scoreboard players set Power varTime 2
execute if score @s ID.gun matches 11..14 run scoreboard players set Power varTime 6
execute if score @s ID.gun matches 21..24 run scoreboard players set Power varTime 4
execute if score @s ID.gun matches 31..34 run scoreboard players set Power varTime 5
execute if score @s ID.gun matches 41..44 run scoreboard players set Power varTime 8
execute if score @s ID.gun matches 51..54 run scoreboard players set Power varTime 3


execute if score Power varTime matches 0..4 run effect give @s regeneration 5 1 false
execute if score Power varTime matches 5..10 run effect give @s regeneration 5 2 false

scoreboard players operation Power varTime *= *50 CONST
execute if score @s module_cooldown matches 1.. run scoreboard players operation @s module_cooldown -= Power varTime
execute if score @s module_cooldown matches ..-1 run scoreboard players set @s module_cooldown 1

particle minecraft:dust 1 0 0 1 ~ ~1.3 ~ 0.2 0.2 0.2 0 20 force @a[distance=0.1..75]