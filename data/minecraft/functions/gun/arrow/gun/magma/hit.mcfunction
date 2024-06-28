execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s player_hit_x
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s player_hit_y
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s player_hit_z
execute if entity @s[tag=!HeatDamage] at @s positioned ~ ~-1 ~ run scoreboard players add @a[distance=..3,gamemode=!spectator] Heat 7
execute positioned ~ ~ ~ run tp @s ~ ~ ~
execute if entity @s[tag=!HeatDamage] run function gun/arrow/gun/magma/heat