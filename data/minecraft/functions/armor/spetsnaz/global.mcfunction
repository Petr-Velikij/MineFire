execute if score @s jump matches 1 run effect give @s jump_boost 1 1 true
execute if score @s sprint_one_cm matches 1.. run scoreboard players add @s stamina 1
execute if score @s jump matches 1.. run scoreboard players remove @s stamina 10

scoreboard players set *1 varTime 0
execute if entity @s[nbt={OnGround:0b},scores={sneak_time=0}] unless data entity @s SelectedItem positioned ~ ~1.6 ~ positioned ^ ^ ^0.8 if block ~ ~ ~ #no_collider unless block ~ ~-0.4 ~ #no_collider run scoreboard players set *1 varTime 1
execute if entity @s[nbt={OnGround:0b},scores={sneak_time=0}] unless data entity @s SelectedItem positioned ~ ~1.6 ~ positioned ^ ^-0.3 ^1 if block ~ ~ ~ #no_collider unless block ~ ~-0.5 ~ #no_collider run scoreboard players set *1 varTime 2
execute if score *1 varTime matches 2 if score @s armor_cooldown2 matches 0 positioned ~ ~1.6 ~ positioned ^ ^ ^0.8 run playsound minecraft:custom.armor.spetsnaz.parkour player @a[distance=..10] ~ ~ ~ 1 1
execute if score *1 varTime matches 2 run scoreboard players set @s armor_cooldown2 10
execute if score *1 varTime matches 2 run effect give @s levitation 1 24 true
execute if score *1 varTime matches 1 run effect give @s levitation 1 6 true
execute if score *1 varTime matches 0 run effect clear @s levitation

execute unless score @s reload matches 0 run function armor/spetsnaz/fast_reload

execute if data entity @s SelectedItem.tag.armor_active run function armor/spetsnaz/active

scoreboard players remove @s[scores={armor_cooldown=1..}] armor_cooldown 1
scoreboard players remove @s[scores={armor_cooldown2=1..}] armor_cooldown2 1