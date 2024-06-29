scoreboard players set coefficient Random 0
playsound minecraft:custom.gun.amper.shot_2d player @s ~ ~ ~ 1 1.4
playsound minecraft:custom.gun.amper.shot_1d player @a[distance=0.1..50] ~ ~1.6 ~ 5 1.4

scoreboard players set *YR.correct varTime 0
function minecraft:vector/get_vec

execute if score @s sneak_time matches 0 run summon minecraft:arrow ~ ~1.5 ~
execute unless score @s sneak_time matches 0 run summon minecraft:arrow ~ ~1.1 ~

function gun/get_uuid
tag @s add Owner
tag @s add NOtarget
scoreboard players set @s Loop 200
scoreboard players operation buf ID.module = @s ID.module
scoreboard players operation buf ID.Owner = @s ID.Player
scoreboard players operation distance varTime = @s Loop
execute positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function pistol/cricket/shot_data
execute positioned ~ ~1 ~ positioned as @e[type=arrow,tag=cricket,sort=nearest,limit=1] rotated as @s run function pistol/cricket/ray

scoreboard players set @s Loop 200
execute if score @s sneak_time matches 0 positioned ~ ~1.5 ~ run function pistol/cricket/spawn_marker
execute unless score @s sneak_time matches 0 positioned ~ ~1.1 ~ run function pistol/cricket/spawn_marker
scoreboard players operation *1 varTime = @s Loop
scoreboard players set @s Loop 200
scoreboard players operation @s Loop -= *1 varTime
execute if score @s sneak_time matches 0 positioned ~ ~1.3 ~ positioned ^-0.5 ^ ^ facing entity @e[tag=end_point,type=marker,limit=1,distance=..100] feet run function pistol/cricket/ray_owner
execute unless score @s sneak_time matches 0 positioned ~ ~0.9 ~ facing entity @e[tag=end_point,type=marker,limit=1,distance=..100] feet run function pistol/cricket/ray_owner
kill @e[tag=end_point,type=marker,limit=1,distance=..100]

tag @s remove NOtarget
tag @e[type=arrow,tag=my_cricket] remove my_cricket
tag @s remove Owner

scoreboard players set @s Supply_pistol 6
execute if score @s ID.module matches 1 run playsound minecraft:custom.gun.amper.overheating_2d player @s ~ ~ ~ 0.4 2
execute if score @s ID.module matches 1 run scoreboard players set @s Supply_pistol 8
function pistol/shot
tp @s ~ ~ ~ ~0.1 ~-1