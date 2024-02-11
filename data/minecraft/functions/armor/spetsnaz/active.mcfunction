execute unless score @s armor_cooldown matches 0 run function armor/cd

execute if score @s armor_cooldown matches 0 if score @s PKM_1 matches 1 run function armor/spetsnaz/knife/throw