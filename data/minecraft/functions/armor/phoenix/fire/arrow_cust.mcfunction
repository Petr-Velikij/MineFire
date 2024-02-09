execute store result score *1 varTime run data get entity @s Motion[1] 10000
scoreboard players remove *1 varTime 300
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get *1 varTime

particle minecraft:smoke ~ ~ ~ 0 0 0 0.02 3 force @a[distance=..75]
particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a[distance=..75]

execute if score @s ArrowLive matches 30 run function armor/phoenix/fire/arrow_spawn
execute positioned ~ ~-1 ~ if entity @e[nbt={HurtTime:9s},distance=..2,sort=nearest] positioned ~ ~1 ~ run function armor/phoenix/fire/arrow_spawn
execute if entity @s[nbt={inGround:1b}] run function armor/phoenix/fire/arrow_spawn