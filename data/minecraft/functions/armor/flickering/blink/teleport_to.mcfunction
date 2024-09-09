execute positioned as @s run summon marker ~ ~ ~ {Tags:["blink","new"]}
summon marker ~ ~ ~ {Tags:["blink_to","new"]}
scoreboard players operation @e[type=marker,tag=new,distance=..50,limit=2] ID.Owner = @s ID.Player
execute as @e[type=marker,tag=blink,tag=new] at @s facing entity @e[type=marker,tag=blink_to,tag=new,limit=1] feet run tp @s ~ ~ ~ ~ ~
tag @e[type=marker,tag=new,distance=..50,limit=2] remove new

execute positioned as @s run playsound minecraft:entity.enderman.teleport player @a[distance=..15] ~ ~1 ~ 2 1
scoreboard players operation *1 varTime = i varTime
scoreboard players operation *2 varTime = *1 varTime
scoreboard players operation *2 varTime *= *5 CONST
scoreboard players operation @s armor_cooldown += *2 varTime
execute if entity @s[tag=custom_invisibility] run scoreboard players add @s armor_cooldown 400
scoreboard players operation *1 varTime *= *8 CONST

execute unless entity @s[tag=custom_invisibility] run scoreboard players operation @s stamina -= *1 varTime
execute if entity @s[tag=custom_invisibility] run function armor/flickering/invisibility/remove

gamemode spectator @s
tag @s add ethereal