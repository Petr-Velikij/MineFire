execute as @e[type=armor_stand,tag=food1] run loot replace entity @s weapon loot loot/food1
execute as @e[type=armor_stand,tag=food2] run loot replace entity @s weapon loot loot/food2
execute as @e[type=armor_stand,tag=food3] run loot replace entity @s weapon loot loot/food3
execute as @e[type=armor_stand,tag=loot,tag=!there_item] at @s run function game/loot/hit_box