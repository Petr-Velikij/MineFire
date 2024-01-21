playsound custom.gun.tessen.shot_1d player @a[distance=1..75] ~ ~1 ~ 4.7 1
playsound custom.gun.tessen.shot_2d player @a[distance=..1] ~ ~1 ~ 2 1


scoreboard players set aiming Random 15
scoreboard players set from_hip Random 30
scoreboard players set running Random 90
function gun/scatter_modifier

scoreboard players set *YR.correct varTime 0
function minecraft:vector/get_vec
scoreboard players operation buf ID.Owner = @s ID.Player
execute at @s positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/phoenix/shot2

scoreboard players set @s Supply 20
function minecraft:gun/shot
scoreboard players set @s Power 100

tp @s ~ ~ ~ ~ ~-3