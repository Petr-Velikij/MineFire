execute as @e[type=armor_stand,tag=level1] run loot replace entity @s weapon loot loot/level1
execute as @e[type=armor_stand,tag=level2] run loot replace entity @s weapon loot loot/level2
execute as @e[type=armor_stand,tag=level3] run loot replace entity @s weapon loot loot/level3
execute as @e[type=armor_stand,tag=loot,tag=!there_item] at @s run function game/loot/hit_box
tag @e[type=armor_stand,tag=loot] add there_item