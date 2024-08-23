playsound custom.gun.sokol.shot_2d player @s ~ ~1.6 ~ 3.7 1
playsound custom.gun.sokol.shot_2d player @s ~ ~1.6 ~ 3.7 1
playsound custom.gun.sokol.shot_1d player @a[distance=1..75] ~ ~1.6 ~ 5.2 1
playsound custom.gun.sokol.shot_1d player @a[distance=1..75] ~ ~1.6 ~ 5.2 1
playsound custom.gun.sokol.echo_1d player @a[distance=..150] ^ ^ ^20 8.5 0.8


scoreboard players set aiming Random 1
scoreboard players set from_hip Random 50
scoreboard players set running Random 300
function gun/scatter_modifier

scoreboard players set *YR.correct varTime 0
function minecraft:vector/get_vec

scoreboard players operation buf ID.Owner = @s ID.Player
execute as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/sokol/shot2

scoreboard players set @s Supply 50
function minecraft:gun/shot

tp @s[tag=!NoKickback] ~ ~ ~ ~-1 ~-3