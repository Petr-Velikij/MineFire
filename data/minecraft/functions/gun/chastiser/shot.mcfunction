scoreboard players set aiming Random 10
scoreboard players set from_hip Random 25
scoreboard players set running Random 100

playsound minecraft:entity.iron_golem.repair player @a[distance=..75] ~ ~ ~ 6.5 1.7
playsound minecraft:entity.shulker.open player @a[distance=75..130] ~ ~ ~ 8.5 1.3


function gun/scatter_modifier
scoreboard players set *YR.correct varTime 0
function minecraft:vector/get_vec

scoreboard players operation buf ID.Owner = @s ID.Player
scoreboard players operation *1 varTime = @s Power
execute positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/chastiser/shot2
execute if score @s Power matches ..129 run scoreboard players add @s Power 2
execute if score @s Power matches 131.. run scoreboard players set @s Power 130

execute if score @s Supply matches 0 if score @s modeFire matches 2..3 run scoreboard players set @s Supply 3
function minecraft:gun/shot
execute if score *InHolder varTime matches 0 run scoreboard players set @s Supply 0
scoreboard players add @s Scatter 30

function minecraft:random/number
execute if score @s modeFire matches 1 if score Number Random matches ..32 run tp @s ~ ~ ~ ~0.8 ~-0.3
execute if score @s modeFire matches 1 unless score Number Random matches ..32 run tp @s ~ ~ ~ ~-0.8 ~-0.3
execute if score @s modeFire matches 2..3 if score Number Random matches ..32 run tp @s ~ ~ ~ ~1.8 ~-0.8
execute if score @s modeFire matches 2..3 unless score Number Random matches ..32 run tp @s ~ ~ ~ ~-1.8 ~-0.8