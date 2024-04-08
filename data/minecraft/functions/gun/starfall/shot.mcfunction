playsound custom.gun.grenade.shot_1d player @a[distance=..30] ~ ~ ~ 3.7 0


scoreboard players set aiming Random 20
scoreboard players set from_hip Random 30
scoreboard players set running Random 80
function gun/scatter_modifier

#scoreboard players set *YR.correct varTime 25000
scoreboard players set *YR.correct varTime 12500
function minecraft:vector/get_vec

scoreboard players operation buf ID.Owner = @s ID.Player
execute as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/starfall/shot2

scoreboard players set @s Supply 45
function minecraft:gun/shot

tp @s ~ ~ ~ ~-3 ~-12