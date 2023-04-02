execute if score @s invisibility matches 0 if score @s camouflage matches 0 run function armor/hunter/change_switch

execute if score @s PKM_1 matches 1 if data entity @s SelectedItem.tag.armor_active run function armor/hunter/scout
execute unless score @s armor_cooldown matches 0 if data entity @s SelectedItem.tag.armor_active run function armor/cd
scoreboard players remove @s[scores={armor_cooldown=1..}] armor_cooldown 1