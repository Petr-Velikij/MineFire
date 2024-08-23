execute if data entity @s SelectedItem.tag.moduleID run function module/print

execute if score @s module_effect matches 1.. if data entity @s SelectedItem.tag.moduleID if score @s PKM_1 matches 1 run function module/overclocking/end
execute if score @s module_cooldown matches 0 if data entity @s SelectedItem.tag.moduleID if score @s PKM_1 matches 1 run function module/overclocking/cust
execute if score @s module_effect matches 1.. if score @s Supply matches 2.. if score @s reload matches 0 run function module/overclocking/effect