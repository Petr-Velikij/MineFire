scoreboard players operation buf ID.Owner = @s ID.Player
execute as @e[type=armor_stand,tag=shield] if score @s ID.Owner = buf ID.Owner run tag @s add my_shield
scoreboard players set *1 varTime 0
execute as @e[type=armor_stand,tag=my_shield] run scoreboard players set *1 varTime 1
execute if score *1 varTime matches 0 run function module/shield/module/spawn

execute unless predicate is_sneaking rotated ~ 0 positioned ~ ~0.9 ~ run tp @e[type=armor_stand,tag=my_shield] ^-0.5 ^ ^-0.5 ~ ~
execute if predicate is_sneaking rotated ~ 0 positioned ~ ~0.4 ~ run tp @e[type=armor_stand,tag=my_shield] ^-0.1 ^ ^-0.4 ~ ~
execute if score @s damage_taken matches 1.. run item replace entity @e[type=armor_stand,tag=my_shield,limit=1,distance=..3] armor.head with oxidized_copper 1
execute if score @s module_cooldown matches 1 run item replace entity @e[type=armor_stand,tag=my_shield,limit=1,distance=..3] armor.head with sea_lantern 1
tag @e[type=armor_stand,tag=my_shield] remove my_shield