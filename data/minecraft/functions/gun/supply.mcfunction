execute in minecraft:overworld run data modify block 0 -64 0 Items set value [{Slot:0b,Count:1,id:stone}]
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].id set from entity @s SelectedItem.id
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].tag set from entity @s SelectedItem.tag

execute in minecraft:overworld store result score *InHolder varTime run data get block 0 -64 0 Items[{Slot:0b}].tag.InHolder 1
execute unless score *InHolder varTime matches 0 in minecraft:overworld run data modify block 0 -64 0 Items[{Slot:0b}].tag merge value {ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}

execute in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine 0 -64 0 air{drop_contents:1b}

scoreboard players set @s Supply 0