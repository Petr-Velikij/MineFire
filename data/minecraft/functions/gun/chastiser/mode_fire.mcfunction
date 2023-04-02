title @s times 0 10 4
title @s title {"text":""}

scoreboard players add @s modeFire 1
execute if score @s modeFire matches 4 run scoreboard players set @s modeFire 1
execute if score @s modeFire matches 1 run title @s subtitle [{"text":"5 выстр/сек ","color":"red"}]
execute if score @s modeFire matches 2 run title @s subtitle [{"text":"10 выстр/сек ","color":"red"}]
execute if score @s modeFire matches 3 run title @s subtitle [{"text":"20 выстр/сек ","color":"red"}]
playsound minecraft:ui.button.click player @s ~ ~1.6 ~ 0.4 1