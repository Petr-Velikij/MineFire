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

scoreboard players set @s Loop 230
scoreboard players operation buf ID.Owner = @s ID.Player
scoreboard players operation distance varTime = @s Loop
execute positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/amper/shot_data

tag @s add NOtarget
execute positioned ~ ~1 ~ positioned as @e[type=arrow,tag=amper,sort=nearest,limit=1] rotated as @s run function minecraft:gun/amper/ray
tag @s remove NOtarget
tag @e[type=arrow,tag=my_amper] remove my_amper

execute if score @s modeFire matches 1 if score @s ID.module matches 1 run function gun/amper/fast

tp @s ~ ~ ~ ~1 ~-4