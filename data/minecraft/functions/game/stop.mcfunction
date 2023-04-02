worldborder center 0 0
worldborder set 550
scoreboard players set Время Zona 0
scoreboard players set Размер Zona 0
scoreboard players set Стадия Zona 0

execute as @a[gamemode=!spectator] run function debug/statistics/add

gamemode adventure @a[gamemode=spectator,tag=Death]
tag @a[tag=Death] remove Death

effect clear @a
effect give @a minecraft:instant_health 1 9 true
effect give @a minecraft:saturation 1 29 true
function minecraft:restart
kill @e[type=minecraft:arrow]
kill @e[type=ender_pearl]
kill @e[type=minecraft:armor_stand,tag=!NO]
kill @e[type=minecraft:item,tag=!NO]
kill @e[type=minecraft:husk,tag=!NO]
kill @e[type=minecraft:chicken,tag=!NO]
kill @e[type=minecraft:phantom,tag=!NO]

tp @a -1 83 0 
clear @a minecraft:potion

execute if entity @s run tellraw @a ["",{"text":"\u0418\u0433\u0440\u043e\u043a ","bold":true,"color":"green"},{"selector":"@s","bold":true},{"text":" \u0437\u0430\u0432\u0435\u0440\u0448\u0438\u043b \u0438\u0433\u0440\u0443","bold":true,"color":"green"}]
execute unless entity @s run tellraw @a {"text":"\u0418\u0433\u0440\u0430 \u0437\u0430\u0432\u0435\u0440\u0448\u0435\u043d\u0430","bold":true,"color":"green"}

execute as @a[gamemode=!spectator] run function zxc/trigers/change