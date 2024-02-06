execute store result score *1 varTime run data get entity @e[tag=turret_collider,distance=..1,limit=1,sort=nearest] Health 1
kill @e[tag=turret,distance=..1,limit=3,sort=nearest]
scoreboard players operation *1 varTime *= *50 CONST
scoreboard players operation @s armor_cooldown -= *1 varTime
execute if score @s armor_cooldown matches ..-1 run scoreboard players set @s armor_cooldown 0
scoreboard players set @s PKM_1 0