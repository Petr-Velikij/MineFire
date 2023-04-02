scoreboard players set Стадия Zona 3
scoreboard players set Время Zona 7

execute store result score HpEnd varTime run data get entity @s Health 5.0

title @a times 10 60 10
title @a subtitle ["",{"text":"\u0412\u044b\u0438\u0433\u0440\u0430\u043b \u0441 "},{"score":{"name":"HpEnd","objective":"varTime"},"color":"dark_red"},{"text":"% HP","color":"dark_red"}]
title @a title [{"selector":"@s"}]

tp @a[distance=5..] @s

scoreboard players set Размер Zona 0
worldborder center 0 0
worldborder set 550