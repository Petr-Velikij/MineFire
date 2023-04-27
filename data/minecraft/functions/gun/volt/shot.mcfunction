execute unless score @s ID.module matches 1 run playsound minecraft:custom.gun.volt.shot_2d player @s ~ ~ ~ 1 0.95
execute if score @s ID.module matches 1 run playsound minecraft:custom.gun.volt.shot_2d player @s ~ ~ ~ 1 1.1
#playsound minecraft:custom.gun.volt.shot_2d player @s ~ ~ ~ 1 0.95
playsound minecraft:custom.gun.volt.shot_1d player @a[distance=0.1..50] ~ ~1.6 ~ 5 1

execute if score @s ID.module matches 1 run stopsound @s player minecraft:custom.gun.volt.end_2d
execute if score @s ID.module matches 1 run stopsound @a[distance=0.1..10] player minecraft:custom.gun.volt.end_1d

tag @s add Owner
execute if score @s sneak_time matches 0 positioned ~ ~1.5 ~ run function gun/volt/discharge/search
execute unless score @s sneak_time matches 0 positioned ~ ~1.1 ~ run function gun/volt/discharge/search
tag @s remove Owner
tag @e[type=#target,distance=..50] remove Electro

function minecraft:gun/shot

tp @s ~ ~ ~ ~ ~-2.8