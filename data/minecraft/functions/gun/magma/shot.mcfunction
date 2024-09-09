execute unless score @s ID.module matches 1 run playsound minecraft:custom.gun.magma.shot_2d player @s ~ ~ ~ 1 0.95
execute if score @s ID.module matches 1 run playsound minecraft:custom.gun.magma.shot_2d player @s ~ ~ ~ 1 1.1
execute unless score @s ID.module matches 1 run playsound minecraft:custom.gun.magma.shot_1d player @a[distance=0.1..125] ~ ~1.6 ~ 7.8 0.95
execute if score @s ID.module matches 1 run playsound minecraft:custom.gun.magma.shot_1d player @a[distance=0.1..125] ~ ~1.6 ~ 7.8 1.1
execute if score @s ID.module matches 1 run stopsound @s player minecraft:custom.gun.magma.end_2d
execute if score @s ID.module matches 1 run stopsound @a[distance=0.1..10] player minecraft:custom.gun.magma.end_1d

scoreboard players set *YR.correct varTime 0
scoreboard players set aiming Random 10
scoreboard players set from_hip Random 25
scoreboard players set running Random 70
function gun/scatter_modifier

summon marker ~ ~ ~ {Tags:["ray"]}
function minecraft:vector/get_vec
execute as @e[type=marker,tag=ray,distance=..1,limit=1] run function gun/magma/rotated

execute if score @s sneak_time matches 0 run summon minecraft:arrow ~ ~1.5 ~
execute unless score @s sneak_time matches 0 run summon minecraft:arrow ~ ~1.1 ~

function gun/get_uuid
tag @s add Owner
scoreboard players set @s Loop 200
scoreboard players operation buf ID.module = @s ID.module
scoreboard players operation buf ID.Owner = @s ID.Player
scoreboard players operation buf Power = @s Power
scoreboard players operation distance varTime = @s Loop
execute positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function gun/magma/shot_data
execute rotated as @e[type=marker,tag=ray,distance=..1,limit=1] positioned ~ ~1 ~ positioned as @e[type=arrow,tag=magma,sort=nearest,limit=1] run function gun/magma/ray

scoreboard players set @s Loop 200
execute if score @s sneak_time matches 0 rotated as @e[type=marker,tag=ray,distance=..1,limit=1] positioned ~ ~1.5 ~ run function gun/magma/spawn_marker
execute unless score @s sneak_time matches 0 rotated as @e[type=marker,tag=ray,distance=..1,limit=1] positioned ~ ~1.1 ~ run function gun/magma/spawn_marker
scoreboard players operation *1 varTime = @s Loop
scoreboard players set @s Loop 200
scoreboard players operation @s Loop -= *1 varTime
execute if score @s sneak_time matches 0 positioned ~ ~1.3 ~ positioned ^-0.5 ^ ^ facing entity @e[tag=end_point,type=marker,limit=1,distance=..100] feet run function gun/magma/ray_owner
execute unless score @s sneak_time matches 0 positioned ~ ~0.9 ~ facing entity @e[tag=end_point,type=marker,limit=1,distance=..100] feet run function gun/magma/ray_owner
kill @e[tag=end_point,type=marker,limit=1,distance=..100]
kill @e[type=marker,tag=ray,distance=..1,limit=1]

scoreboard players add @s Power 6
execute if score @s ID.module matches 1 run scoreboard players add @s Power 2
execute if score @s Power matches 201.. run scoreboard players set @s Supply 20
execute if score @s Power matches 201.. run playsound minecraft:custom.gun.amper.overheating_2d player @s ~ ~ ~ 0.8 1.5

tag @s remove NOtarget
tag @e[type=arrow,tag=my_magma] remove my_magma
tag @s remove Owner

execute if score @s Supply matches 0 run scoreboard players set @s Supply 4
execute if score @s Supply matches 4 run function gun/shot

execute if score @s Supply matches 4 run tp @s[tag=!NoKickback] ~ ~ ~ ~-0.3 ~-0.5
execute unless score @s Supply matches 4 run tp @s[tag=!NoKickback] ~ ~ ~ ~0.3 ~-1