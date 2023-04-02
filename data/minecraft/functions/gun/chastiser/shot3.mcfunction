execute if score @s sneak_time matches 0 run summon minecraft:arrow ~ ~1.5 ~
execute unless score @s sneak_time matches 0 run summon minecraft:arrow ~ ~1.1 ~
execute store result score UUID[0] varTime run data get entity @s UUID[0]
execute store result score UUID[1] varTime run data get entity @s UUID[1]
execute store result score UUID[2] varTime run data get entity @s UUID[2]
execute store result score UUID[3] varTime run data get entity @s UUID[3]
function minecraft:vector/get_vec
execute positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/set_uuid
function minecraft:gun/chastiser/shot