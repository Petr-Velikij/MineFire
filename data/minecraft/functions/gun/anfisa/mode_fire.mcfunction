title @s times 0 10 4
title @s title {"text":""}

stopsound @s voice
scoreboard players add @s modeFire 1
execute if score @s modeFire matches 3 run scoreboard players set @s modeFire 1
execute if score @s modeFire matches 1 run title @s subtitle [{"text":"Ручной","color":"red"}]
execute if score @s modeFire matches 1 run playsound custom.gun.anfisa.mod_1 voice @s ~ ~ ~ 1 1.15
execute if score @s modeFire matches 1 run kill @e[type=armor_stand,tag=marcer_enemy2,distance=..5]
execute if score @s modeFire matches 2 run title @s subtitle [{"text":"Анфиса","color":"blue"}]
execute if score @s modeFire matches 2 run playsound custom.gun.anfisa.mod_2 voice @s ~ ~ ~ 1 1.15
playsound minecraft:ui.button.click player @s ~ ~1.6 ~ 0.4 1
scoreboard players set @s Anfisa 70
scoreboard players set @s ID.target 0