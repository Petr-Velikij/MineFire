kill @e[tag=game_zone]
summon minecraft:marker ~ ~ ~ {Tags:["game_zone"]}
tp @e[type=marker,tag=game_zone] @e[type=marker,tag=zone,sort=random,limit=1]
execute as @e[type=marker,tag=game_zone] at @s run spreadplayers ~ ~ 0 25 true @s

execute as @e[type=marker,tag=game_zone] at @s run worldborder center ~ ~
worldborder set 350

execute if score Игроков Zona matches ..2 run scoreboard players set Размер Zona 3
execute if score Игроков Zona matches 3..4 run scoreboard players set Размер Zona 4
execute if score Игроков Zona matches 5.. run scoreboard players set Размер Zona 5
execute if score Игроков Zona matches ..2 run worldborder set 210
execute if score Игроков Zona matches 3..4 run worldborder set 280
execute if score Игроков Zona matches 5.. run worldborder set 350
execute if score Игроков Zona matches ..2 at @e[type=marker,tag=game_zone] run spreadplayers ~ ~ 100 105 true @a[gamemode=adventure]
execute if score Игроков Zona matches 3..4 at @e[type=marker,tag=game_zone] run spreadplayers ~ ~ 130 140 true @a[gamemode=adventure]
execute if score Игроков Zona matches 5.. at @e[type=marker,tag=game_zone] run spreadplayers ~ ~ 150 175 true @a[gamemode=adventure]
scoreboard players set Время Zona 60
scoreboard players set Стадия Zona 1
# 0 - Игра не запущена
# 1 - Зона стоит
# 2 - Зона сужается
# 3 - Игра кончена
# 4 - Запуск игры

effect clear @a[gamemode=!spectator]
effect give @a[gamemode=!spectator] minecraft:instant_health 1 9 true
effect give @a[gamemode=!spectator] minecraft:saturation 1 29 true
clear @a[gamemode=!spectator] #clear_start
clear @a[gamemode=adventure] carrot_on_a_stick{the_ammo:1b}
give @a[gamemode=!spectator] bread 2
loot give @a[gamemode=!spectator] loot item/grenade
loot give @a[gamemode=!spectator] loot item/grenade
loot give @a[gamemode=!spectator] loot item/grenade
function minecraft:restart
execute as @a[gamemode=!spectator] run function minecraft:gun/reload_fast
kill @e[type=minecraft:arrow]
kill @e[type=ender_pearl]
kill @e[type=minecraft:armor_stand,tag=!NO]
kill @e[type=minecraft:item,tag=!NO]
kill @e[type=minecraft:husk,tag=!NO]
kill @e[type=minecraft:wolf,tag=!NO]
kill @e[type=minecraft:phantom,tag=!NO]
kill @e[type=marker,tag=footprint]

execute if entity @s run tellraw @a ["",{"text":"\u0418\u0433\u0440\u043e\u043a ","bold":true,"color":"green"},{"selector":"@s","bold":true},{"text":" \u0437\u0430\u043f\u0443\u0441\u0442\u0438\u043b \u0438\u0433\u0440\u0443","bold":true,"color":"green"}]
execute unless entity @s run tellraw @a {"text":"\u0418\u0433\u0440\u0430 \u0437\u0430\u043f\u0443\u0449\u0435\u043d\u0430","bold":true,"color":"green"}

title @a times 5 50 10
title @a title {"text":"Игра началась","color":"green","bold":true,"italic":false}
title @a subtitle {"text":"Удачи :)","color":"green","bold":false,"italic":false}

execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~100 ~ 100 0
function game/loot/spawn

setblock -3 75 14 air
setblock -5 75 14 air
setblock -3 74 14 air
setblock -5 74 14 air
data merge block 4 74 14 {Lock:"locl"}
data merge block 6 74 14 {Lock:"locl"}