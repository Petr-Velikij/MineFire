execute in minecraft:overworld run data modify block 0 -64 0 Items set value [{Slot:0b,Count:1,id:stone}]
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].id set from entity @s SelectedItem.id
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].tag set from entity @s SelectedItem.tag

execute in minecraft:overworld store result score *Holder varTime run data get block 0 -64 0 Items[{Slot:0b}].tag.Holder 1
execute if score *Holder varTime > @s ammo run scoreboard players operation *1 varTime = @s ammo
execute if score *Holder varTime > @s ammo in minecraft:overworld store result block 0 -64 0 Items[{Slot:0b}].tag.InHolder int 1 run scoreboard players get @s ammo
execute if score *Holder varTime <= @s ammo run scoreboard players operation *1 varTime = *Holder varTime
execute if score *Holder varTime <= @s ammo in minecraft:overworld store result block 0 -64 0 Items[{Slot:0b}].tag.InHolder int 1 run scoreboard players get *Holder varTime
scoreboard players operation *1 varTime *= @s price_cartridge
scoreboard players operation @s ammo_point -= *1 varTime

execute in minecraft:overworld store result score *InHolder varTime run data get block 0 -64 0 Items[{Slot:0b}].tag.InHolder 100
execute in minecraft:overworld store result score *Holder varTime run data get block 0 -64 0 Items[{Slot:0b}].tag.Holder 1
scoreboard players set *Max varTime 465
scoreboard players set *1 varTime 100

scoreboard players operation *InHolder varTime /= *Holder varTime
scoreboard players operation *InHolder varTime *= *Max varTime
scoreboard players operation *InHolder varTime /= *1 varTime
scoreboard players operation *Max varTime -= *InHolder varTime
scoreboard players operation *Damage varTime = *Max varTime
execute in minecraft:overworld store result block 0 -64 0 Items[{Slot:0b}].tag.Damage int 1 run scoreboard players get *Damage varTime
execute if score *InHolder varTime matches 1.. in minecraft:overworld run data modify block 0 -64 0 Items[{Slot:0b}].tag merge value {ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}

execute in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine 0 -64 0 air{drop_contents:1b}