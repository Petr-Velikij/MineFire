execute in minecraft:overworld run data modify block 0 -64 0 Items set value [{Slot:0b,Count:1,id:stone}]
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].id set from entity @s SelectedItem.id
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].tag set from entity @s SelectedItem.tag

execute store result score *1 varTime in minecraft:overworld run data get block 0 -64 0 Items[{Slot:0b}].tag.CustomModelData
scoreboard players operation *1 varTime %= *100 CONST
scoreboard players add *1 varTime 1000
execute unless score @s invisibility matches 0 run scoreboard players add *1 varTime 200
execute in minecraft:overworld store result block 0 -64 0 Items[{Slot:0b}].tag.CustomModelData int 1 run scoreboard players get *1 varTime

execute in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine 0 -64 0 air{drop_contents:1b}
tag @s add no_scope
#tellraw @a ["",{"text":"Установлена модель "},{"score":{"name":"*1","objective":"varTime"}}]