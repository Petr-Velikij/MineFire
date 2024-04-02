playsound custom.gun.grenade.shot_1d player @a[distance=..30] ~ ~ ~ 3.7 0.85

scoreboard players set aiming Random 20
scoreboard players set from_hip Random 30
scoreboard players set running Random 80
function gun/scatter_modifier

#50 блоков
scoreboard players set *YR.correct varTime 2900
function minecraft:vector/get_vec

scoreboard players operation buf ID.Owner = @s ID.Player
scoreboard players set *1 varTime 0
execute as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/hammer/shot2

scoreboard players set @s Supply 0
function minecraft:gun/shot

execute if score @s Power matches 100..140 run tp @s ~ ~ ~ ~0.5 ~-3
execute if score @s Power matches 141..199 run tp @s ~ ~ ~ ~-0.3 ~-2
execute if score @s Power matches 200 run tp @s ~ ~ ~ ~0.1 ~-1