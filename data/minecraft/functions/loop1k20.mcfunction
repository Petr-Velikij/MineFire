#Зона
execute if score Стадия Zona matches 4 run function game/auto/countdown

execute if score Время Zona matches 1.. run scoreboard players remove Время Zona 1
execute if score Время Zona matches 15 if score Стадия Zona matches 1 if score Размер Zona matches 1..5 run tellraw @a ["",{"text":"Зона начнёт движение через 15 секунд","bold":true,"color":"aqua"}]
execute if score Время Zona matches 5 if score Стадия Zona matches 1 if score Размер Zona matches 1..5 run tellraw @a ["",{"text":"\u0417\u043e\u043d\u0430 \u043d\u0430\u0447\u043d\u0451\u0442 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435 \u0447\u0435\u0440\u0435\u0437 5 \u0441\u0435\u043a\u0443\u043d\u0434","bold":true,"color":"aqua"}]
execute if score Время Zona matches 0 if score Стадия Zona matches 1..2 if score Размер Zona matches 0..5 run function minecraft:game/zona

scoreboard players set Игроков Zona 0
execute at @a[gamemode=adventure] run scoreboard players add Игроков Zona 1
execute if score Стадия Zona matches 1..2 run function minecraft:game/test_end
execute if score Время Zona matches ..0 if score Стадия Zona matches 3 run function minecraft:game/stop

execute if score #auto Zona matches 1 if score Стадия Zona matches 0 run function game/auto/raspredeleniye