playsound custom.gun.tessen.shot_1d player @a[distance=1..75] ~ ~1 ~ 4.7 1
playsound custom.gun.tessen.shot_2d player @a[distance=..1] ~ ~1 ~ 2 1


execute store result score UUID[0] varTime run data get entity @s UUID[0]
execute store result score UUID[1] varTime run data get entity @s UUID[1]
execute store result score UUID[2] varTime run data get entity @s UUID[2]
execute store result score UUID[3] varTime run data get entity @s UUID[3]

scoreboard players set aiming Random 15
scoreboard players set from_hip Random 30
scoreboard players set running Random 90
function gun/scatter_modifier
execute store result score *XR varTime run data get entity @s Rotation[1] 1000
execute store result score *YR varTime run data get entity @s Rotation[0] 1000
function minecraft:random/random
scoreboard players remove *XR varTime 500
scoreboard players operation buf ID.Owner = @s ID.Player
execute positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] at @s run function minecraft:gun/phoenix/arrow

scoreboard players set @s Supply 10
function minecraft:gun/shot
scoreboard players set @s Power 110

tp @s ~ ~ ~ ~ ~-3