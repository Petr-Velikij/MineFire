summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["zona","NO"]}
spreadplayers 0 0 0 175 false @e[tag=zona]

worldborder center 0 0
worldborder set 768 

execute as @e[tag=zona] at @s run worldborder center ~ ~
execute as @e[tag=zona] at @s run spreadplayers ~ ~ 150 175 true @a[gamemode=adventure]

effect clear @a[gamemode=!spectator]
effect give @a[gamemode=!spectator] minecraft:instant_health 1 9 true
effect give @a[gamemode=!spectator] minecraft:saturation 1 29 true
clear @a[gamemode=!spectator] #clear_start
give @a[gamemode=!spectator] minecraft:bread 5
give @a[gamemode=!spectator,scores={ID.armor=8}] minecraft:ender_pearl 1
function minecraft:restart
execute as @a[gamemode=!spectator] run function minecraft:gun/reload_fast
kill @e[type=minecraft:arrow]
kill @e[type=ender_pearl]
kill @e[type=minecraft:armor_stand,tag=!NO]
kill @e[type=minecraft:item,tag=!NO]
kill @e[type=minecraft:husk,tag=!NO]
kill @e[type=minecraft:chicken,tag=!NO]
kill @e[type=minecraft:phantom,tag=!NO]

worldborder set 350

scoreboard players set Размер Zona 5
scoreboard players set Время Zona 60
scoreboard players set Стадия Zona 1
# 0 - Игра не запущена
# 1 - Зона стоит
# 2 - Зона сужается
# 3 - Игра кончена
# 4 - Запуск игры

execute if entity @s run tellraw @a ["",{"text":"\u0418\u0433\u0440\u043e\u043a ","bold":true,"color":"green"},{"selector":"@s","bold":true},{"text":" \u0437\u0430\u043f\u0443\u0441\u0442\u0438\u043b \u0438\u0433\u0440\u0443","bold":true,"color":"green"}]
execute unless entity @s run tellraw @a {"text":"\u0418\u0433\u0440\u0430 \u0437\u0430\u043f\u0443\u0449\u0435\u043d\u0430","bold":true,"color":"green"}

title @a times 5 50 10
title @a title {"text":"Игра началась","color":"green","bold":true,"italic":false}
title @a subtitle {"text":"Удачи :)","color":"green","bold":false,"italic":false}

execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~100 ~ 100 0
function game/loot/spawn
kill @e[tag=zona]