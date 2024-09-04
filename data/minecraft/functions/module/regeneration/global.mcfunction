execute if data entity @s SelectedItem.tag.moduleID run function module/print

execute if score @s player_hurt matches 1 run function module/regeneration/hurt

execute if score @s module_cooldown matches 0 if data entity @s SelectedItem.tag.moduleID if score @s PKM_1 matches 1 run function module/regeneration/cust
execute if score @s module_effect matches 1.. run function module/regeneration/effect