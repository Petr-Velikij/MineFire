execute store result score UUID[0] varTime run data get entity @s Owner[0]
execute store result score UUID[1] varTime run data get entity @s Owner[1]
execute store result score UUID[2] varTime run data get entity @s Owner[2]
execute store result score UUID[3] varTime run data get entity @s Owner[3]
scoreboard players operation *1 varTime = @s varTimeEntity1
scoreboard players operation *2 varTime = @s varTimeEntity2

summon minecraft:arrow ~ ~ ~
summon minecraft:arrow ~ ~ ~
summon minecraft:arrow ~ ~ ~
summon minecraft:arrow ~ ~ ~
summon minecraft:arrow ~ ~ ~
summon minecraft:arrow ~ ~ ~
summon minecraft:arrow ~ ~ ~
summon minecraft:arrow ~ ~ ~
summon minecraft:arrow ~ ~ ~
summon minecraft:arrow ~ ~ ~
summon minecraft:arrow ~ ~ ~
summon minecraft:arrow ~ ~ ~

scoreboard players set *YR.correct varTime 0
scoreboard players set coefficient Random 100
execute as @e[type=arrow,tag=,sort=nearest,limit=12] run function minecraft:gun/arrow/gun/splitting/bullet/shot
playsound minecraft:entity.generic.explode player @a[distance=..35] ~ ~ ~ 1 0.8
kill @s