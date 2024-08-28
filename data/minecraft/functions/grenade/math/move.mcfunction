execute if entity @s[nbt={inGround:1b}] run function grenade/math/rebound
execute store result score @s varTimeEntity1 run data get entity @s Motion[0] 10000
execute store result score @s varTimeEntity2 run data get entity @s Motion[1] 10000
execute store result score @s varTimeEntity3 run data get entity @s Motion[2] 10000