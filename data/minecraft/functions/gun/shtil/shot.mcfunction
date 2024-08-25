playsound minecraft:custom.gun.shtil.shot_2d player @s ~ ~ ~ 1 1
playsound minecraft:custom.gun.shtil.echo_1d player @a[distance=..10] ~ ~ ~ 1 1
playsound minecraft:custom.gun.shtil.echo_1d player @a[distance=..75] ^ ^ ^7 4.8 1


scoreboard players set aiming Random 3
scoreboard players set from_hip Random 25
scoreboard players set running Random 70
function gun/scatter_modifier

scoreboard players set *YR.correct varTime 0
execute if score @s sneak_time matches 1.. run scoreboard players set *YR.correct varTime 1400
function minecraft:vector/get_vec

scoreboard players operation buf ID.Owner = @s ID.Player
execute positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/shtil/shot2

execute if score @s sneak_time matches 0 positioned ~ ~1.6 ~ run particle minecraft:smoke ^-0.23 ^-0.2 ^1.0 0 0 0 0.01 3 normal @s
execute unless score @s sneak_time matches 0 positioned ~ ~1.3 ~ run particle minecraft:smoke ^ ^-0.1 ^1.0 0 0 0 0.01 3 normal @s

execute if score @s sneak_time matches 0 positioned ~ ~1.6 ~ run particle minecraft:smoke ^ ^ ^0.7 0 0 0 0.01 3 force @a[distance=2..100]
execute unless score @s sneak_time matches 0 positioned ~ ~1.3 ~ run particle minecraft:smoke ^ ^ ^0.7 0 0 0 0.01 3 force @a[distance=2..100]

function minecraft:gun/shot

tp @s[tag=!NoKickback] ~ ~ ~ ~ ~-1.8