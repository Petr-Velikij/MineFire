execute if score @s PKM_1 matches 1 if score @s armor_cooldown matches 0 if data entity @s SelectedItem.tag.armor_active run function armor/grenadier/cast
execute if data entity @s SelectedItem.tag.armor_active run function armor/cd
scoreboard players remove @s[scores={armor_cooldown=1..}] armor_cooldown 1