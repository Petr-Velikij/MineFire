execute store result score *1 varTime run data get entity @s Motion[1] 10000
scoreboard players remove *1 varTime 1000
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get *1 varTime

particle minecraft:firework ~ ~ ~ 0 0 0 0.02 3 force @a[distance=..175]
execute if entity @s[tag=up] run particle minecraft:firework ~ ~ ~ 0.05 0.05 0.05 0.1 3 force @a[distance=..175]
execute if entity @s[tag=hitMarcer] run function gun/arrow/gun/starfall/hit
execute if score @s ArrowLive matches 10.. if entity @e[type=#target,distance=..2] positioned ~ ~1 ~ run function gun/arrow/gun/starfall/explosion
execute if score @s ArrowLive matches 40 run function gun/arrow/gun/starfall/explosion