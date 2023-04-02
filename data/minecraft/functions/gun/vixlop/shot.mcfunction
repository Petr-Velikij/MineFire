playsound custom.gun.vixlop.shot_2d player @s ~ ~1.6 ~ 3.7 1
playsound custom.gun.vixlop.shot_1d player @a[distance=1..30] ~ ~1.6 ~ 3.7 1
playsound custom.gun.vixlop.echo_1d player @a[distance=..90] ^ ^ ^20 4.5 1
stopsound @a[distance=..30] player minecraft:item.crossbow.shoot

scoreboard players set aiming Random 2
scoreboard players set from_hip Random 40
scoreboard players set running Random 200
function gun/scatter_modifier

scoreboard players set *YR.correct varTime 0
execute if score @s sneak_time matches 1.. run scoreboard players set *YR.correct varTime 600
function minecraft:vector/get_vec

scoreboard players operation buf ID.Owner = @s ID.Player
execute as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/vixlop/shot2

scoreboard players set @s Supply 30
function minecraft:gun/shot

tp @s ~ ~ ~ ~-1 ~-3