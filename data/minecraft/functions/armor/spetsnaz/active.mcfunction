execute unless score @s armor_cooldown matches 0 run function armor/cd
effect clear @s strength
execute at @a[gamemode=!spectator,distance=..5] rotated ~ 0 positioned ^ ^ ^-2 if entity @s[distance=..1.5] run effect give @s strength 1 9 false
execute if score @s armor_cooldown matches 0 if score @s PKM_1 matches 1 run function armor/spetsnaz/knife/throw