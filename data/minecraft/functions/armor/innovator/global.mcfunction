execute if score @s[x_rotation=-90..-75] jump matches 1 if score @s armor_cooldown matches 0 run function armor/innovator/jump
execute if entity @s[x_rotation=-90..-75] run function armor/cd
execute unless score @s armor_cooldown2 matches 0 run function armor/innovator/effect

execute if score @s[nbt={OnGround:0b}] sneak_time matches 1 if block ~ ~-1 ~ #no_collider if block ~ ~-2 ~ #no_collider if block ~ ~-3 ~ #no_collider run function armor/innovator/slow_falling
execute if score @s sneak_time matches 0 if score @s armor_cooldown2 matches 0 run effect clear @s slow_falling

scoreboard players remove @s[scores={armor_cooldown=1..}] armor_cooldown 1