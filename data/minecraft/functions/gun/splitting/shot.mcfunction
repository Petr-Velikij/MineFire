playsound minecraft:entity.generic.explode player @a[distance=..75] ~ ~1 ~ 4.7 0.6
playsound minecraft:entity.generic.explode player @a[distance=..35] ~ ~1 ~ 2 0.8
playsound minecraft:entity.generic.explode player @a[distance=1..35] ~ ~1 ~ 2 0.8


scoreboard players set aiming Random 30
scoreboard players set from_hip Random 70
scoreboard players set running Random 150
function gun/scatter_modifier

scoreboard players set *YR.correct varTime 0
function minecraft:vector/get_vec
execute store result score *1 varTime run data get entity @s Rotation[1] 1000
execute store result score *2 varTime run data get entity @s Rotation[0] 1000
scoreboard players operation buf ID.Owner = @s ID.Player
execute positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/splitting/shot2

function minecraft:gun/shot
tp @s ~ ~ ~ ~ ~-30