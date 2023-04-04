tag @s remove there_item

execute in minecraft:overworld run data modify block 0 -64 0 Items set value [{Slot:0b,Count:1,id:stone}]
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].id set from entity @s HandItems[0].id
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].tag set from entity @s HandItems[0].tag
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].Count set from entity @s HandItems[0].Count

item replace entity @s weapon.mainhand with air

execute as @a[gamemode=!spectator,distance=..6] run function game/loot/give_item
playsound minecraft:entity.item.pickup player @a[distance=..20] ~ ~ ~ 0.7 2