title @a times 0 30 0
execute if score Время Zona matches 3 run title @a title {"text":"Старт через 3...","color":"green","bold":true,"italic":false}
execute if score Время Zona matches 2 run title @a title {"text":"Старт через 2..","color":"green","bold":true,"italic":false}
execute if score Время Zona matches 1 run title @a title {"text":"Старт через 1.","color":"green","bold":true,"italic":false}
execute if score Время Zona matches 0 run title @a title {"text":""}
title @a subtitle {"text":""}
execute unless score Время Zona matches 0 as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~100 ~ 100 2
execute if score Время Zona matches 0 run function game/start