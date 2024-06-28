summon skeleton ~ ~ ~ {Invulnerable:0b,Health:1f,Tags:["bait"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"null"}}],Attributes:[{Name:generic.follow_range,Base:0},{Name:generic.attack_damage,Base:0}]}

data modify entity @e[type=skeleton,tag=bait,distance=..1,limit=1] ArmorItems[3].tag.SkullOwner set string entity @s bukkit.lastKnownName
tp @e[type=skeleton,tag=bait,distance=..1,limit=1] @s

execute in minecraft:overworld run data modify block 0 -64 0 Items set value [{Slot:0b,Count:1,id:stone}]
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].id set from entity @s Inventory[{tag:{gun:1b}}].id
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].tag set from entity @s Inventory[{tag:{gun:1b}}].tag
execute in minecraft:overworld run loot replace entity @e[type=skeleton,tag=bait,distance=..1,limit=1] weapon.mainhand 1 mine 0 -64 0 air{drop_contents:1b}

execute in minecraft:overworld run data modify block 0 -64 0 Items set value [{Slot:0b,Count:1,id:stone}]
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].id set from entity @s Inventory[{Slot:102b}].id
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].tag set from entity @s Inventory[{Slot:102b}].tag
execute in minecraft:overworld run loot replace entity @e[type=skeleton,tag=bait,distance=..1,limit=1] armor.chest 1 mine 0 -64 0 air{drop_contents:1b}

execute in minecraft:overworld run data modify block 0 -64 0 Items set value [{Slot:0b,Count:1,id:stone}]
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].id set from entity @s Inventory[{Slot:101b}].id
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].tag set from entity @s Inventory[{Slot:101b}].tag
execute in minecraft:overworld run loot replace entity @e[type=skeleton,tag=bait,distance=..1,limit=1] armor.legs 1 mine 0 -64 0 air{drop_contents:1b}

execute in minecraft:overworld run data modify block 0 -64 0 Items set value [{Slot:0b,Count:1,id:stone}]
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].id set from entity @s Inventory[{Slot:100b}].id
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].tag set from entity @s Inventory[{Slot:100b}].tag
execute in minecraft:overworld run loot replace entity @e[type=skeleton,tag=bait,distance=..1,limit=1] armor.feet 1 mine 0 -64 0 air{drop_contents:1b}