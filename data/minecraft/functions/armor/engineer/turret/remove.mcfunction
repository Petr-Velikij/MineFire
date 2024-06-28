execute as @e[tag=turret_collider,distance=..5] if score @s ID.Owner = buf ID.Owner store result score *1 varTime run data get entity @s Health 1
execute as @e[tag=turret_collider,distance=..5] if score @s ID.Owner = buf ID.Owner run data merge entity @s {Owner:[I;0,0,0,0]}
execute as @e[tag=turret,distance=..5] if score @s ID.Owner = buf ID.Owner run kill @s
scoreboard players operation *1 varTime *= *20 CONST
scoreboard players operation @s armor_cooldown -= *1 varTime
execute if score @s armor_cooldown matches ..-1 run scoreboard players set @s armor_cooldown 0
scoreboard players set @s PKM_1 0