scoreboard players set aiming Random 10
scoreboard players set from_hip Random 20
scoreboard players set running Random 40

playsound minecraft:custom.gun.shtil.shot_2d player @s ~ ~ ~ 0.5 2
playsound minecraft:custom.gun.shtil.echo_1d player @a[distance=..10] ~ ~ ~ 0.5 2

function gun/scatter_modifier
#25 блоков
scoreboard players set *YR.correct varTime 950
scoreboard players set coefficient Random 0
function minecraft:vector/get_vec
scoreboard players operation buf ID.Owner = @s ID.Player
execute at @s positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function pistol/silent/shot2

execute if score @s sneak_time matches 0 positioned ~ ~1.6 ~ run particle minecraft:smoke ^-0.23 ^-0.2 ^1.0 0 0 0 0.01 1 normal @s
execute unless score @s sneak_time matches 0 positioned ~ ~1.3 ~ run particle minecraft:smoke ^ ^-0.1 ^1.0 0 0 0 0.01 1 normal @s

execute if score @s sneak_time matches 0 positioned ~ ~1.6 ~ run particle minecraft:smoke ^ ^ ^0.7 0 0 0 0.01 1 force @a[distance=2..100]
execute unless score @s sneak_time matches 0 positioned ~ ~1.3 ~ run particle minecraft:smoke ^ ^ ^0.7 0 0 0 0.01 1 force @a[distance=2..100]

scoreboard players set @s Supply_pistol 6
function pistol/shot

scoreboard players add @s Scatter 40

tp @s ~ ~ ~ ~ ~-0.7