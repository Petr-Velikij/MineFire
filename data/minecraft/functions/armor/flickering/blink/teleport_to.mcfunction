execute positioned as @s run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,Tags:["blink","new"],ArmorItems:[{},{},{},{id:"minecraft:white_stained_glass",Count:1b}]}
summon marker ~ ~ ~ {Tags:["blink_to","new"]}
scoreboard players operation @e[type=marker,tag=new,distance=..50,limit=2] ID.Owner = @s ID.Player
scoreboard players operation @e[type=armor_stand,tag=new,distance=..50,limit=2] ID.Owner = @s ID.Player
#execute as @e[type=marker,tag=blink,tag=new] at @s facing entity @e[type=marker,tag=blink_to,tag=new,limit=1] feet run tp @s ~ ~ ~ ~ ~
tag @e[type=marker,tag=new,distance=..50,limit=2] remove new
tag @e[type=armor_stand,tag=new,distance=..50,limit=2] remove new

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