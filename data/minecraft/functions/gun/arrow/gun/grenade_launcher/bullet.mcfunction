execute store result score *1 varTime run data get entity @s Motion[1] 10000
scoreboard players remove *1 varTime 600
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get *1 varTime

particle minecraft:smoke ~ ~ ~ 0 0 0 0.02 3 force @a[distance=..75]
execute if entity @s[tag=up] run particle minecraft:smoke ~ ~ ~ 0.05 0.05 0.05 0.1 3 force @a[distance=..75]
execute positioned ~ ~-1 ~ if entity @e[nbt={HurtTime:9s},distance=..2,sort=nearest] run function gun/arrow/gun/grenade_launcher/explosion
execute if entity @s[nbt={inGround:1b}] run function gun/arrow/gun/grenade_launcher/explosion