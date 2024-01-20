scoreboard players set aiming Random 15
scoreboard players set from_hip Random 30
scoreboard players set running Random 90

playsound custom.gun.bear.shot_1d player @a[distance=..75] ~ ~ ~ 4.7 1


function gun/scatter_modifier
scoreboard players set *YR.correct varTime 1200
function minecraft:vector/get_vec
scoreboard players operation buf ID.Owner = @s ID.Player
execute at @s positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/bear/shot2

execute if score @s Supply matches 0 if score @s modeFire matches 2 run scoreboard players set @s Supply 3
function minecraft:gun/shot
execute if score *InHolder varTime matches 0 run scoreboard players set @s Supply 0

execute if score @s Power matches 100..105 run tp @s ~ ~ ~ ~-2 ~-7
execute if score @s Power matches 106..115 run tp @s ~ ~ ~ ~3 ~1
execute if score @s Power matches 116.. run tp @s ~ ~ ~ ~-0.4 ~-1.2

execute if score @s Supply matches 1 at @s run tp @s ~ ~ ~ ~-0.4 ~-1.2

scoreboard players add @s Scatter 30
scoreboard players add @s Power 8
execute if score @s Power matches 121.. run scoreboard players set @s Power 120