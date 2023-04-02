execute if score @s sneak_time matches 0 run summon minecraft:arrow ~ ~1.5 ~
execute unless score @s sneak_time matches 0 run summon minecraft:arrow ~ ~1.1 ~
execute store result score UUID[0] varTime run data get entity @s UUID[0]
execute store result score UUID[1] varTime run data get entity @s UUID[1]
execute store result score UUID[2] varTime run data get entity @s UUID[2]
execute store result score UUID[3] varTime run data get entity @s UUID[3]
execute positioned ~ ~1.5 ~ facing entity @p[gamemode=!spectator,distance=2..50,tag=target] eyes run tp @s ~ ~-1.5 ~ ~ ~
function minecraft:vector/get_vec
execute positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/set_uuid
function minecraft:gun/anfisa/shot
scoreboard players set @s Supply 20

execute if score @s Anfisa matches 0 run playsound custom.gun.anfisa.shot_auto voice @s ~ ~ ~ 1 1.15
execute if score @s Anfisa matches 0 run scoreboard players set @s Anfisa 18