execute if data entity @s SelectedItem.tag.armor_active if score @s armor_cooldown matches 0 if score @s sneak_time matches 0 run function armor/flickering/blink/start
execute if data entity @s SelectedItem.tag.armor_active if score @s armor_cooldown matches 0 unless score @s sneak_time matches 0 if score @s PKM_1 matches 1 run function armor/flickering/invisibility/cast

execute if data entity @s SelectedItem.tag.armor_active if score @s armor_cooldown matches 1.. run function armor/cd

execute if score @s damage_taken matches 15.. if score @s health matches ..5 run function armor/flickering/invisibility/give
execute if score @s[tag=custom_invisibility] invisibility matches 1.. run function armor/flickering/invisibility/effect

scoreboard players remove @s[scores={armor_cooldown=1..}] armor_cooldown 1
scoreboard players remove @s[scores={armor_cooldown2=1..}] armor_cooldown2 1