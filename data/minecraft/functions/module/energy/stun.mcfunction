particle minecraft:dust 0 1 1 1 ~ ~1 ~ 0.3 0.4 0.3 0 3 force @a[distance=..75]
scoreboard players remove @s Stun 1
execute if score @s StunGun matches 1.. run scoreboard players remove @s StunGun 1
effect give @s slowness 1 2 true