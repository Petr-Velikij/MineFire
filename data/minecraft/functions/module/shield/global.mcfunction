execute if score @s module_cooldown matches 1 run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 2 1.5
execute if score @s module_cooldown matches 0 run function module/shield/effect

execute if data entity @s SelectedItem.tag.moduleID run function module/print

function module/shield/module/global