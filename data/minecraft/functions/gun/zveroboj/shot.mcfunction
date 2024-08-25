playsound minecraft:entity.generic.explode player @a[distance=..75] ~ ~1 ~ 12.2 1.8
playsound minecraft:entity.generic.explode player @a[distance=..35] ~ ~1 ~ 2 2
playsound minecraft:entity.generic.explode player @a[distance=..35] ~ ~1 ~ 2 0.7

playsound minecraft:entity.generic.explode player @a[distance=75..200] ~ ~1 ~ 12.2 1.5


execute store result score UUID[0] varTime run data get entity @s UUID[0]
execute store result score UUID[1] varTime run data get entity @s UUID[1]
execute store result score UUID[2] varTime run data get entity @s UUID[2]
execute store result score UUID[3] varTime run data get entity @s UUID[3]

scoreboard players set aiming Random 20
scoreboard players set from_hip Random 20
scoreboard players set running Random 60
function gun/scatter_modifier
execute store result score *XR varTime run data get entity @s Rotation[1] 1000
execute store result score *YR varTime run data get entity @s Rotation[0] 1000
function minecraft:random/random
scoreboard players operation buf ID.Owner = @s ID.Player
execute positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] at @s run function minecraft:gun/zveroboj/arrow

function minecraft:gun/shot

tp @s[tag=!NoKickback] ~ ~ ~ ~ ~-4