execute if data entity @s SelectedItem.tag.moduleID unless score @s module_cooldown matches 0 run function module/print
execute if score @s PKM_1 matches 1 if data entity @s SelectedItem.tag.moduleID if score @s module_cooldown matches 0 run function module/energy/cast