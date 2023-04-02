# Получаем угловые координаты и записываем их в счёт
execute store result score *XR varTime run data get entity @s Rotation[1] 1000
execute store result score *YR varTime run data get entity @s Rotation[0] 1000
scoreboard players add *YR varTime 90000
scoreboard players remove *XR varTime 45000


# Еслт YR меньше нуля добавляем 360 градусов
execute if score *YR varTime matches ..0 run scoreboard players add *YR varTime 360000

execute positioned ~ ~1.1 ~ run summon minecraft:armor_stand ^-0.3 ^ ^0.2 {Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["casing"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:705}}]}

execute store result entity @e[type=armor_stand,tag=casing,sort=nearest,limit=1] Rotation[1] float 0.001 run scoreboard players get *XR varTime
execute store result entity @e[type=armor_stand,tag=casing,sort=nearest,limit=1] Rotation[0] float 0.001 run scoreboard players get *YR varTime

execute as @e[type=armor_stand,tag=casing,sort=nearest,limit=1] at @s run tp @s ~ ~ ~