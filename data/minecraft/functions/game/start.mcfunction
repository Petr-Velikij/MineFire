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

kill @e[tag=zona]

item replace entity @e[type=minecraft:armor_stand,tag=loot] weapon.mainhand with air
execute as @e[x=-82,y=72,z=-111,dx=2,dy=3,dz=2,type=minecraft:armor_stand,tag=loot] run loot replace entity @s weapon loot minecraft:loot/home/fisherman
execute as @e[x=-94,y=71,z=-78,dx=4,dy=4,dz=3,type=minecraft:armor_stand,tag=loot] run loot replace entity @s weapon loot minecraft:loot/home/woodcutter
execute as @e[x=-130,y=71,z=-69,dx=7,dy=3,dz=5,type=minecraft:armor_stand,tag=loot] run loot replace entity @s weapon loot minecraft:loot/home/master1
execute as @e[x=-129,y=78,z=-68,dx=2,dy=2,dz=2,type=minecraft:armor_stand,tag=loot] run loot replace entity @s weapon loot minecraft:loot/home/master2
execute as @e[x=15,y=71,z=60,dx=9,dy=2,dz=6,type=minecraft:armor_stand,tag=loot] run loot replace entity @s weapon loot minecraft:loot/home/baker
data merge block 15 71 61 {Items:[{}]}
loot insert 15 71 61 loot minecraft:loot/home/baker
data merge block 15 73 61 {Items:[{}]}
loot insert 15 73 61 loot minecraft:loot/home/baker

execute as @e[x=73,y=71,z=78,dx=8,dy=2,dz=8,type=minecraft:armor_stand,tag=loot] run loot replace entity @s weapon loot minecraft:loot/home/sallon
execute as @e[x=87,y=71,z=49,dx=2,dy=2,dz=1,type=minecraft:armor_stand,tag=loot] run loot replace entity @s weapon loot minecraft:loot/home/baker1
execute as @e[x=89,y=71,z=55,dx=1,dy=2,dz=0,type=minecraft:armor_stand,tag=loot] run loot replace entity @s weapon loot minecraft:loot/home/baker2
execute as @e[x=86,y=71,z=55,dx=2,dy=2,dz=0,type=minecraft:armor_stand,tag=loot] run loot replace entity @s weapon loot minecraft:loot/home/baker3
data merge block 90 71 52 {Items:[{}]}
loot insert 90 71 52 loot minecraft:loot/home/baker1
data merge block 90 71 53 {Items:[{}]}
loot insert 90 71 53 loot minecraft:loot/home/baker1

execute as @e[x=-106,y=71,z=81,dx=3,dy=2,dz=3,type=minecraft:armor_stand,tag=loot] run loot replace entity @s weapon loot minecraft:loot/tents/kitchen
data merge block -104 73 84 {Items:[{}]}
loot insert -104 73 84 loot minecraft:loot/tents/kitchen
data merge block -103 73 84 {Items:[{}]}
loot insert -102 73 84 loot minecraft:loot/tents/kitchen
execute as @e[x=-95,y=71,z=80,dx=1,dy=2,dz=4,type=minecraft:armor_stand,tag=loot] run loot replace entity @s weapon loot minecraft:loot/tents/large_table
execute as @e[x=-87,y=71,z=103,dx=6,dy=2,dz=9,type=minecraft:armor_stand,tag=loot] run loot replace entity @s weapon loot minecraft:loot/tents/tent

execute as @e[x=-11,y=74,z=-9,dx=3,dy=2,dz=3,type=minecraft:armor_stand,tag=loot] run loot replace entity @s weapon loot minecraft:loot/castle/fisherman
execute as @e[x=7,y=74,z=-9,dx=3,dy=2,dz=3,type=minecraft:armor_stand,tag=loot] run loot replace entity @s weapon loot minecraft:loot/castle/potion
data merge block 7 75 -8 {Items:[{}]}
loot replace block 7 75 -8 container.0 loot minecraft:loot/castle/potion
loot replace block 7 75 -8 container.1 loot minecraft:loot/castle/potion
loot replace block 7 75 -8 container.2 loot minecraft:loot/castle/potion
execute as @e[x=5,y=74,z=6,dx=4,dy=2,dz=2,type=minecraft:armor_stand,tag=loot] run loot replace entity @s weapon loot minecraft:loot/castle/kitchen

data merge block -92 81 -21 {Items:[{}]}
loot replace block -92 81 -21 container.0 loot minecraft:loot/mag/potion
loot replace block -92 81 -21 container.1 loot minecraft:loot/mag/potion
loot replace block -92 81 -21 container.2 loot minecraft:loot/mag/potion
data merge block -95 96 -22 {Items:[{}]}
loot replace block -95 96 -22 container.0 loot minecraft:loot/mag/potion
loot replace block -95 96 -22 container.1 loot minecraft:loot/mag/potion
loot replace block -95 96 -22 container.2 loot minecraft:loot/mag/potion
execute as @e[x=-95,y=88,z=-25,dx=8,dy=2,dz=5,type=minecraft:armor_stand,tag=loot] run loot replace entity @s weapon loot minecraft:loot/mag/potion

execute as @e[x=20,y=71,z=-123,dx=17,dy=3,dz=21,type=minecraft:armor_stand,tag=loot] run loot replace entity @s weapon loot minecraft:loot/canyon/x27_z-112
execute as @e[x=-176,y=74,z=114,dx=1,dy=2,dz=1,type=minecraft:armor_stand,tag=loot] run loot replace entity @s weapon loot minecraft:loot/canyon/x-162_z115