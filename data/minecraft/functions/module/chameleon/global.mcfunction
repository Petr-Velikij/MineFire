execute if data entity @s SelectedItem.tag.moduleID unless score @s module_cooldown matches 0 run function module/print
execute if score @s PKM_1 matches 1 if data entity @s SelectedItem.tag.moduleID if score @s module_cooldown matches 0 unless score @s camouflage matches 0 run function module/chameleon/remove
execute if score @s PKM_1 matches 1 if data entity @s SelectedItem.tag.moduleID if score @s module_cooldown matches 0 if score @s camouflage matches 0 run function module/chameleon/give

execute if score @s camouflage matches 1.. run function module/chameleon/effect