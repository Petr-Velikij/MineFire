scoreboard players set coefficient Random 0
playsound minecraft:custom.gun.amper.shot_2d player @s ~ ~ ~ 1 1
playsound minecraft:custom.gun.amper.shot_1d player @a[distance=0.1..50] ~ ~1.6 ~ 5 1


execute store result score UUID[0] varTime run data get entity @s UUID[0]
execute store result score UUID[1] varTime run data get entity @s UUID[1]
execute store result score UUID[2] varTime run data get entity @s UUID[2]
execute store result score UUID[3] varTime run data get entity @s UUID[3]

scoreboard players set *YR.correct varTime 0
function minecraft:vector/get_vec

execute if score @s sneak_time matches 0 run summon minecraft:arrow ~ ~1.5 ~
execute unless score @s sneak_time matches 0 run summon minecraft:arrow ~ ~1.1 ~

tag @s add Owner
tag @s add NOtarget
scoreboard players set @s Loop 230
execute if score @s modeFire matches 2 run scoreboard players set @s Loop 300
scoreboard players operation buf ID.Owner = @s ID.Player
scoreboard players operation distance varTime = @s Loop
execute positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/amper/shot_data
execute positioned ~ ~1 ~ positioned as @e[type=arrow,tag=amper,sort=nearest,limit=1] rotated as @s run function minecraft:gun/amper/ray

scoreboard players set @s Loop 230
execute if score @s modeFire matches 2 run scoreboard players set @s Loop 300
execute if score @s sneak_time matches 0 positioned ~ ~1.5 ~ run function minecraft:gun/amper/spawn_marker
execute unless score @s sneak_time matches 0 positioned ~ ~1.1 ~ run function minecraft:gun/amper/spawn_marker
scoreboard players operation *1 varTime = @s Loop
scoreboard players set @s Loop 230
execute if score @s modeFire matches 2 run scoreboard players set @s Loop 300
scoreboard players operation @s Loop -= *1 varTime
execute if score @s sneak_time matches 0 positioned ~ ~1.3 ~ positioned ^-0.5 ^ ^ facing entity @e[tag=end_point,type=marker,limit=1,distance=..100] feet run function minecraft:gun/amper/ray_owner
execute unless score @s sneak_time matches 0 positioned ~ ~0.9 ~ facing entity @e[tag=end_point,type=marker,limit=1,distance=..100] feet run function minecraft:gun/amper/ray_owner
kill @e[tag=end_point,type=marker,limit=1,distance=..100]

tag @s remove NOtarget
tag @e[type=arrow,tag=my_amper] remove my_amper
tag @s remove Owner

execute if score @s ID.module matches 1 if score @s modeFire matches 1 run scoreboard players set @s Supply -6
execute if score @s ID.module matches 1 if score @s modeFire matches 1 run playsound minecraft:custom.gun.amper.overheating_2d player @s ~ ~ ~ 0.4 1.5

execute if score @s ID.module matches 1 if score @s modeFire matches 2 run scoreboard players set @s Supply -12
execute if score @s ID.module matches 1 if score @s modeFire matches 2 run playsound minecraft:custom.gun.amper.overheating_2d player @s ~ ~ ~ 0.6 1


tp @s ~ ~ ~ ~1 ~-4