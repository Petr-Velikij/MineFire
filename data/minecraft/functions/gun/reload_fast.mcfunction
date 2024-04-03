execute in minecraft:overworld run data modify block 0 -64 0 Items set value [{Slot:0b,Count:1,id:stone}]
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].id set from entity @s Inventory[{tag:{gun:1b}}].id
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].tag set from entity @s Inventory[{tag:{gun:1b}}].tag

execute in minecraft:overworld store result score *Holder varTime run data get block 0 -64 0 Items[{Slot:0b}].tag.Holder 1
execute in minecraft:overworld store result block 0 -64 0 Items[{Slot:0b}].tag.InHolder int 1 run scoreboard players get *Holder varTime
execute in minecraft:overworld run data modify block 0 -64 0 Items[{Slot:0b}].tag merge value {Damage:0,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}

execute in minecraft:overworld if data entity @s Inventory[{Slot:0b,tag:{gun:1b}}].id run loot replace entity @s hotbar.0 1 mine 0 -64 0 air{drop_contents:1b}
execute in minecraft:overworld if data entity @s Inventory[{Slot:1b,tag:{gun:1b}}].id run loot replace entity @s hotbar.1 1 mine 0 -64 0 air{drop_contents:1b}
execute in minecraft:overworld if data entity @s Inventory[{Slot:2b,tag:{gun:1b}}].id run loot replace entity @s hotbar.2 1 mine 0 -64 0 air{drop_contents:1b}
execute in minecraft:overworld if data entity @s Inventory[{Slot:3b,tag:{gun:1b}}].id run loot replace entity @s hotbar.3 1 mine 0 -64 0 air{drop_contents:1b}
execute in minecraft:overworld if data entity @s Inventory[{Slot:4b,tag:{gun:1b}}].id run loot replace entity @s hotbar.4 1 mine 0 -64 0 air{drop_contents:1b}
execute in minecraft:overworld if data entity @s Inventory[{Slot:5b,tag:{gun:1b}}].id run loot replace entity @s hotbar.5 1 mine 0 -64 0 air{drop_contents:1b}
execute in minecraft:overworld if data entity @s Inventory[{Slot:6b,tag:{gun:1b}}].id run loot replace entity @s hotbar.6 1 mine 0 -64 0 air{drop_contents:1b}
execute in minecraft:overworld if data entity @s Inventory[{Slot:7b,tag:{gun:1b}}].id run loot replace entity @s hotbar.7 1 mine 0 -64 0 air{drop_contents:1b}
execute in minecraft:overworld if data entity @s Inventory[{Slot:8b,tag:{gun:1b}}].id run loot replace entity @s hotbar.8 1 mine 0 -64 0 air{drop_contents:1b}
execute in minecraft:overworld if data entity @s Inventory[{Slot:-106b,tag:{gun:1b}}].id run loot replace entity @s weapon.offhand 1 mine 0 -64 0 air{drop_contents:1b}

execute in minecraft:overworld run data modify block 0 -64 0 Items set value [{Slot:0b,Count:1,id:stone}]
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].id set from entity @s Inventory[{tag:{gun:2b}}].id
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].tag set from entity @s Inventory[{tag:{gun:2b}}].tag

execute in minecraft:overworld store result score *Holder varTime run data get block 0 -64 0 Items[{Slot:0b}].tag.Holder 1
execute in minecraft:overworld store result block 0 -64 0 Items[{Slot:0b}].tag.InHolder int 1 run scoreboard players get *Holder varTime
execute in minecraft:overworld run data modify block 0 -64 0 Items[{Slot:0b}].tag merge value {Damage:0,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}

execute in minecraft:overworld if data entity @s Inventory[{Slot:0b,tag:{gun:2b}}].id run loot replace entity @s hotbar.0 1 mine 0 -64 0 air{drop_contents:1b}
execute in minecraft:overworld if data entity @s Inventory[{Slot:1b,tag:{gun:2b}}].id run loot replace entity @s hotbar.1 1 mine 0 -64 0 air{drop_contents:1b}
execute in minecraft:overworld if data entity @s Inventory[{Slot:2b,tag:{gun:2b}}].id run loot replace entity @s hotbar.2 1 mine 0 -64 0 air{drop_contents:1b}
execute in minecraft:overworld if data entity @s Inventory[{Slot:3b,tag:{gun:2b}}].id run loot replace entity @s hotbar.3 1 mine 0 -64 0 air{drop_contents:1b}
execute in minecraft:overworld if data entity @s Inventory[{Slot:4b,tag:{gun:2b}}].id run loot replace entity @s hotbar.4 1 mine 0 -64 0 air{drop_contents:1b}
execute in minecraft:overworld if data entity @s Inventory[{Slot:5b,tag:{gun:2b}}].id run loot replace entity @s hotbar.5 1 mine 0 -64 0 air{drop_contents:1b}
execute in minecraft:overworld if data entity @s Inventory[{Slot:6b,tag:{gun:2b}}].id run loot replace entity @s hotbar.6 1 mine 0 -64 0 air{drop_contents:1b}
execute in minecraft:overworld if data entity @s Inventory[{Slot:7b,tag:{gun:2b}}].id run loot replace entity @s hotbar.7 1 mine 0 -64 0 air{drop_contents:1b}
execute in minecraft:overworld if data entity @s Inventory[{Slot:8b,tag:{gun:2b}}].id run loot replace entity @s hotbar.8 1 mine 0 -64 0 air{drop_contents:1b}
execute in minecraft:overworld if data entity @s Inventory[{Slot:-106b,tag:{gun:2b}}].id run loot replace entity @s weapon.offhand 1 mine 0 -64 0 air{drop_contents:1b}