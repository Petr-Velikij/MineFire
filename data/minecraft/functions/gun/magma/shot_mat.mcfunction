execute in minecraft:overworld run data modify block 0 -64 0 Items set value [{Slot:0b,Count:1,id:stone}]
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].id set from entity @s SelectedItem.id
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].tag set from entity @s SelectedItem.tag

function gun/ammo
scoreboard players operation @s ammo_point -= @s price_cartridge
execute if score @s Power matches 1.. if score @s ammo_point >= @s price_cartridge in overworld run data modify block 0 -64 0 Items[{Slot:0b}].tag merge value {ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if score @s ammo_point < @s price_cartridge in overworld run data modify block 0 -64 0 Items[{Slot:0b}].tag merge value {InHolder:0b}
execute if score @s Power matches 0 in overworld run data modify block 0 -64 0 Items[{Slot:0b}].tag merge value {InHolder:0b}
scoreboard players operation @s ammo = @s ammo_point
scoreboard players operation @s ammo /= @s price_cartridge
scoreboard players operation *1 varTime = @s ammo

execute in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine 0 -64 0 air{drop_contents:1b}