execute store result score *XR varTime run data get entity @s Rotation[1] 1000
scoreboard players add *XR varTime 15000
execute store result entity @s Rotation[1] float 0.001 run scoreboard players get *XR varTime
tp @s ^ ^ ^0.3
execute unless block ~ ~ ~ #minecraft:lumbago run playsound minecraft:block.anvil.fall player @a[distance=..7] ~ ~ ~ 0.3 2
execute unless block ~ ~ ~ #minecraft:lumbago run kill @s