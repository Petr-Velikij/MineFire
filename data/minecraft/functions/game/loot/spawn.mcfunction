execute as @e[type=armor_stand,tag=food1] run loot replace entity @s weapon loot loot/food1
execute as @e[type=armor_stand,tag=food2] run loot replace entity @s weapon loot loot/food2
execute as @e[type=armor_stand,tag=food3] run loot replace entity @s weapon loot loot/food3
execute as @e[type=armor_stand,tag=food3] run loot replace entity @s weapon loot loot/food3
execute as @e[type=armor_stand,tag=ammo_small] run item replace entity @s armor.head with carrot_on_a_stick{display:{Name:'{"text":"Патроны","italic":false}',Lore:['{"text":"+20% к базовым","italic":false}']},CustomModelData:801,ammo:144,the_ammo:1b}
execute as @e[type=armor_stand,tag=ammo_big] run item replace entity @s armor.head with carrot_on_a_stick{display:{Name:'{"text":"Патроны","italic":false}',Lore:['{"text":"+50% к базовым","italic":false}']},CustomModelData:802,ammo:350,the_ammo:1b}
execute as @e[type=armor_stand,tag=loot,tag=!there_item] at @s run function game/loot/hit_box