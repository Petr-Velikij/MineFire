execute positioned as @s run particle minecraft:flash ~ ~1 ~ 0 0 0 1 1 force @a[distance=..125]
tp @s ~ ~ ~
particle minecraft:flash ~ ~1 ~ 0 0 0 1 1 force @a[distance=..125]
playsound minecraft:entity.enderman.teleport player @a[distance=..15] ~ ~1 ~ 2 1
scoreboard players operation *1 varTime = i varTime
scoreboard players operation *2 varTime = *1 varTime
scoreboard players operation *2 varTime *= *5 CONST
scoreboard players operation @s armor_cooldown += *2 varTime
execute if entity @s[tag=custom_invisibility] run scoreboard players add @s armor_cooldown 400
scoreboard players operation *1 varTime *= *8 CONST

execute unless entity @s[tag=custom_invisibility] run scoreboard players operation @s stamina -= *1 varTime
execute if entity @s[tag=custom_invisibility] run function armor/flickering/invisibility/remove