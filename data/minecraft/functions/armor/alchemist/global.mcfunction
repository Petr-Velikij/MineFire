execute if score @s PKM_1 matches 1 if score @s armor_cooldown matches 0 if data entity @s SelectedItem.tag.armor_active run function armor/alchemist/cast
execute if score @s PKM_1 matches 1 unless score @s armor_cooldown matches 0 if data entity @s SelectedItem.tag.armor_active run function armor/cd
execute if data entity @s SelectedItem.tag.armor_active run function armor/cd
scoreboard players remove @s[scores={armor_cooldown=1..}] armor_cooldown 1

execute store result score *1 varTime run clear @s ender_pearl 0
execute if score *1 varTime matches ..1 if score @s armor_cooldown2 matches 2 run give @s ender_pearl
execute if score *1 varTime matches ..1 if score @s armor_cooldown2 matches 0 run scoreboard players set @s armor_cooldown2 600
execute if score *1 varTime matches 3.. run clear @s ender_pearl
execute if score *1 varTime matches 3.. run give @s ender_pearl 2
scoreboard players remove @s[scores={armor_cooldown2=1..}] armor_cooldown2 1