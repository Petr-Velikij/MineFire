execute if entity @e[type=arrow,distance=..15] run function armor/guardian/shild/initialization
execute if score @s Loop matches 0 run function armor/guardian/shild/delete
execute if score @s Power matches ..0 run function armor/guardian/shild/delete
scoreboard players remove @s Loop 1
execute if score @s Loop matches 60 run playsound minecraft:entity.experience_orb.pickup voice @a[distance=..10] ~ ~ ~ 1 1.7
execute if score @s Loop matches 40 run playsound minecraft:entity.experience_orb.pickup voice @a[distance=..10] ~ ~ ~ 1 1.6
execute if score @s Loop matches 20 run playsound minecraft:entity.experience_orb.pickup voice @a[distance=..10] ~ ~ ~ 1 1.5
#execute at @e[type=marker,tag=Mshild] run particle dust 1 1 0 1 ~ ~ ~ 0 0 0 0 1 force