execute unless score @s armor_cooldown matches 0 run function armor/cd

execute if score @s armor_cooldown matches 0 if data entity @s {OnGround:1b} run function armor/spetsnaz/zipline/rendering_set