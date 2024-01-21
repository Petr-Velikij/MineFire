scoreboard players set aiming Random 10
scoreboard players set from_hip Random 25
scoreboard players set running Random 70

execute unless score @s ID.module matches 1 run playsound minecraft:custom.gun.volt.shot_2d player @s ~ ~ ~ 1 0.95
execute if score @s ID.module matches 1 run playsound minecraft:custom.gun.volt.shot_2d player @s ~ ~ ~ 1 1.1
execute unless score @s ID.module matches 1 run playsound minecraft:custom.gun.volt.shot_1d player @a[distance=0.1..50] ~ ~1.6 ~ 5 0.95
execute if score @s ID.module matches 1 run playsound minecraft:custom.gun.volt.shot_1d player @a[distance=0.1..50] ~ ~1.6 ~ 5 1.1

execute if score @s ID.module matches 1 run stopsound @s player minecraft:custom.gun.volt.end_2d
execute if score @s ID.module matches 1 run stopsound @a[distance=0.1..10] player minecraft:custom.gun.volt.end_1d

function gun/scatter_modifier
scoreboard players set *YR.correct varTime 0
function minecraft:vector/get_vec
scoreboard players operation buf ID.Owner = @s ID.Player
scoreboard players operation buf Power = @s Power
execute at @s positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/magma/shot2

scoreboard players add @s Power 20
execute if score @s ID.module matches 1 run scoreboard players add @s Power 6
execute if score @s Power matches 201.. run scoreboard players set @s Supply 20
function gun/shot

tp @s ~ ~ ~ ~-0.3 ~-1.5