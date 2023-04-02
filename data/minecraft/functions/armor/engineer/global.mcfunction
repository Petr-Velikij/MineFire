execute if score @s jump matches 1.. run playsound minecraft:block.piston.extend player @a[distance=..20] ~ ~ ~ 1 2 

execute if score @s PKM_1 matches 1 if score @s armor_cooldown matches 0 if data entity @s[nbt={OnGround:1b}] SelectedItem.tag.armor_active unless entity @e[tag=turret,distance=..2] align xyz positioned ~0.5 ~ ~0.5 run function armor/engineer/turret/set
execute if score @s PKM_1 matches 1 unless score @s armor_cooldown matches 0 if data entity @s SelectedItem.tag.armor_active run function armor/cd
execute if data entity @s SelectedItem.tag.armor_active run function armor/cd
scoreboard players remove @s[scores={armor_cooldown=1..}] armor_cooldown 1