execute if data entity @s SelectedItem.tag.moduleID unless score @s module_cooldown matches 0 run function module/print
execute if score @s PKM_1 matches 1 if data entity @s SelectedItem.tag.moduleID if score @s module_cooldown matches 0 unless score @s invisibility matches 0 run function module/invisibility/remove
execute if score @s PKM_1 matches 1 if data entity @s SelectedItem.tag.moduleID if score @s module_cooldown matches 0 if score @s invisibility matches 0 run function module/invisibility/give

execute if score @s invisibility matches 1.. run function module/invisibility/effect