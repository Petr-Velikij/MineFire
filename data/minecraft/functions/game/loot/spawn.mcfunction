execute as @e[type=armor_stand,tag=food1] run loot replace entity @s weapon loot loot/food1
execute as @e[type=armor_stand,tag=food2] run loot replace entity @s weapon loot loot/food2
execute as @e[type=armor_stand,tag=food3] run loot replace entity @s weapon loot loot/food3
execute as @e[type=armor_stand,tag=ammo_small] run loot replace entity @s armor.head loot loot/ammo1
execute as @e[type=armor_stand,tag=ammo_big] run loot replace entity @s armor.head loot loot/ammo2
execute as @e[type=armor_stand,tag=loot,tag=!there_item] at @s run function game/loot/hit_box
tag @e[type=armor_stand,tag=loot] add there_item