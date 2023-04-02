execute unless score @s ID.module matches 1 run playsound minecraft:custom.gun.volt.shot_2d player @s ~ ~ ~ 1 0.95
execute if score @s ID.module matches 1 run playsound minecraft:custom.gun.volt.shot_2d player @s ~ ~ ~ 1 1.1
#playsound minecraft:custom.gun.volt.shot_2d player @s ~ ~ ~ 1 0.95
playsound minecraft:custom.gun.volt.shot_1d player @a[distance=0.1..50] ~ ~1.6 ~ 5 1
stopsound @a[distance=..30] player minecraft:item.crossbow.shoot
execute if score @s ID.module matches 1 run stopsound @s player minecraft:custom.gun.volt.end_2d
execute if score @s ID.module matches 1 run stopsound @a[distance=0.1..10] player minecraft:custom.gun.volt.end_1d

scoreboard players set aiming Random 10
scoreboard players set from_hip Random 20
scoreboard players set running Random 50
function gun/scatter_modifier

scoreboard players set *YR.correct varTime 0
function minecraft:vector/get_vec
execute store result score *1 varTime run data get entity @s Rotation[0] 1000
scoreboard players operation buf ID.Owner = @s ID.Player
execute at @s positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/volt/shot2

function minecraft:gun/shot

tp @s ~ ~ ~ ~ ~-2.8