execute if score @s ArrowLive matches ..3 store result entity @s Motion[0] double 0.001 run data get entity @s Motion[0] 600
execute if score @s ArrowLive matches ..3 store result entity @s Motion[1] double 0.001 run data get entity @s Motion[1] 600
execute if score @s ArrowLive matches ..3 store result entity @s Motion[2] double 0.001 run data get entity @s Motion[2] 600

execute store result score *1 varTime run data get entity @s Motion[1] 10000
scoreboard players remove *1 varTime 100
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get *1 varTime

scoreboard players operation buf ID.Owner = @s ID.Owner
execute as @a[gamemode=!spectator] if score @s ID.Player = buf ID.Owner run tag @s add Owner
execute if score @s ArrowLive matches 2.. positioned ~ ~-0.5 ~ as @e[distance=..1.5,type=#target,nbt=!{Fire:-20s}] run damage @s 4 on_fire
execute if score @s ArrowLive matches 2.. positioned ~ ~-0.5 ~ as @e[distance=..1.5,type=#target] run damage @s 1.5 on_fire
tag @a remove Owner

scoreboard players operation *1 varTime = @s ArrowLive
scoreboard players operation *1 varTime %= *10 CONST
execute if score *1 varTime matches 5 run playsound minecraft:block.fire.ambient player @a[distance=..15] ~ ~ ~ 1 1
execute if score *1 varTime matches 3 run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.05 1 force @a[distance=..150]

execute if score @s ArrowLive matches 50 run kill @s