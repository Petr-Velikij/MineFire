scoreboard players set aiming Random 15
scoreboard players set from_hip Random 30
scoreboard players set running Random 90

playsound custom.gun.bear.shot_1d player @a[distance=..75] ~ ~ ~ 4.7 1
stopsound @a[distance=..30] player minecraft:item.crossbow.shoot

function gun/scatter_modifier
scoreboard players set *YR.correct varTime 0
function minecraft:vector/get_vec
scoreboard players operation buf ID.Owner = @s ID.Player
execute at @s positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/bear/shot2

function minecraft:gun/shot
scoreboard players add @s Scatter 50

scoreboard players set *1 varTime 19
scoreboard players operation *1 varTime -= *InHolder varTime
scoreboard players operation *1 varTime %= *6 CONST

execute if score *1 varTime matches 0 run tp @s ~ ~ ~ ~2 ~-2
execute if score *1 varTime matches 1 run tp @s ~ ~ ~ ~ ~2
execute if score *1 varTime matches 2 run tp @s ~ ~ ~ ~-1.5 ~-2
execute if score *1 varTime matches 3 run tp @s ~ ~ ~ ~-2 ~-2
execute if score *1 varTime matches 4 run tp @s ~ ~ ~ ~0.5 ~1
execute if score *1 varTime matches 5 run tp @s ~ ~ ~ ~2 ~-0.5