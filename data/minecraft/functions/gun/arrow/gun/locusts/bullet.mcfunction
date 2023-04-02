execute unless score @s ID.target matches 0 run function gun/arrow/gun/locusts/target

scoreboard players set coefficient Random 10

execute store result score *1 varTime run data get entity @s Motion[0] 10000
function gun/arrow/gun/locusts/random
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get *1 varTime

execute store result score *1 varTime run data get entity @s Motion[1] 10000
function gun/arrow/gun/locusts/random
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get *1 varTime

execute store result score *1 varTime run data get entity @s Motion[2] 10000
function gun/arrow/gun/locusts/random
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get *1 varTime

playsound block.fire.extinguish player @a[distance=..50] ~ ~ ~ 3.2 2
particle minecraft:flame ~ ~ ~ 0 0 0 0.01 1 force @a[distance=..175]
particle minecraft:smoke ~ ~ ~ 0 0 0 0.02 3 force @a[distance=..75]
execute if entity @s[tag=up] run particle minecraft:smoke ~ ~ ~ 0.05 0.05 0.05 0.1 3 force @a[distance=..75]
execute positioned ~ ~-1 ~ if entity @e[nbt={HurtTime:9s},distance=..2,sort=nearest] run function gun/arrow/gun/locusts/explosion
execute if entity @s[nbt={inGround:1b}] run function gun/arrow/gun/locusts/explosion
execute if score @s ArrowLive matches 199 run function gun/arrow/gun/locusts/explosion