execute if score Стадия Zona matches 1..2 run gamemode spectator @s
execute if score Стадия Zona matches 1..2 run tag @s add Death
stopsound @s player custom.gun.neutron.overclocking_2d

scoreboard players operation *1 varTime = @s ammo_point
scoreboard players operation *1 varTime *= *100 CONST
scoreboard players operation *1 varTime /= ammoStart CONST

setblock 0 -63 0 air
setblock 0 -63 0 oak_sign{Color:"-1",Text1:'[{"text":"+","italic":false},{"score":{"name":"*1","objective":"varTime"}},{"text":"% к базовым"}]'} replace
summon item ~ ~ ~ {Tags:["loot_player","new"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Патроны с игрока","italic":false}',Lore:['[{"text":"+??% к базовым","italic":false}]']},CustomModelData:802,ammo:0,the_ammo:1b}}}
data modify entity @e[type=item,limit=1,tag=new] Item.tag.display.Lore[0] set from block 0 -63 0 Text1
execute store result entity @e[type=item,limit=1,tag=new] Item.tag.ammo double 1 run scoreboard players get @s ammo_point
tag @e[type=item,limit=1,tag=new] remove new

data modify block 0 -64 0 Items set from entity @s Inventory
loot spawn ~ ~ ~ mine 0 -64 0 air{drop_contents:1b}

data modify block 0 -64 0 Items set value [{Slot:0b,id:"minecraft:stone",Count:1b},{Slot:1b,id:"minecraft:stone",Count:1b},{Slot:2b,id:"minecraft:stone",Count:1b},{Slot:3b,id:"minecraft:stone",Count:1b},{Slot:4b,id:"minecraft:stone",Count:1b},{Slot:5b,id:"minecraft:stone",Count:1b},{Slot:6b,id:"minecraft:stone",Count:1b},{Slot:7b,id:"minecraft:stone",Count:1b},{Slot:8b,id:"minecraft:stone",Count:1b}]
data modify block 0 -64 0 Items[0].id set from entity @s Inventory[{Slot:27b}].id
data modify block 0 -64 0 Items[0].Count set from entity @s Inventory[{Slot:27b}].Count
data modify block 0 -64 0 Items[0].tag set from entity @s Inventory[{Slot:27b}].tag
data modify block 0 -64 0 Items[1].id set from entity @s Inventory[{Slot:28b}].id
data modify block 0 -64 0 Items[1].Count set from entity @s Inventory[{Slot:28b}].Count
data modify block 0 -64 0 Items[1].tag set from entity @s Inventory[{Slot:28b}].tag
data modify block 0 -64 0 Items[2].id set from entity @s Inventory[{Slot:29b}].id
data modify block 0 -64 0 Items[2].Count set from entity @s Inventory[{Slot:29b}].Count
data modify block 0 -64 0 Items[2].tag set from entity @s Inventory[{Slot:29b}].tag
data modify block 0 -64 0 Items[3].id set from entity @s Inventory[{Slot:30b}].id
data modify block 0 -64 0 Items[3].Count set from entity @s Inventory[{Slot:30b}].Count
data modify block 0 -64 0 Items[3].tag set from entity @s Inventory[{Slot:30b}].tag
data modify block 0 -64 0 Items[4].id set from entity @s Inventory[{Slot:31b}].id
data modify block 0 -64 0 Items[4].Count set from entity @s Inventory[{Slot:31b}].Count
data modify block 0 -64 0 Items[4].tag set from entity @s Inventory[{Slot:31b}].tag
data modify block 0 -64 0 Items[5].id set from entity @s Inventory[{Slot:32}].id
data modify block 0 -64 0 Items[5].Count set from entity @s Inventory[{Slot:32b}].Count
data modify block 0 -64 0 Items[5].tag set from entity @s Inventory[{Slot:32b}].tag
data modify block 0 -64 0 Items[6].id set from entity @s Inventory[{Slot:33b}].id
data modify block 0 -64 0 Items[6].Count set from entity @s Inventory[{Slot:33b}].Count
data modify block 0 -64 0 Items[6].tag set from entity @s Inventory[{Slot:33b}].tag
data modify block 0 -64 0 Items[7].id set from entity @s Inventory[{Slot:34b}].id
data modify block 0 -64 0 Items[7].Count set from entity @s Inventory[{Slot:34b}].Count
data modify block 0 -64 0 Items[7].tag set from entity @s Inventory[{Slot:34b}].tag
data modify block 0 -64 0 Items[8].id set from entity @s Inventory[{Slot:35b}].id
data modify block 0 -64 0 Items[8].Count set from entity @s Inventory[{Slot:35b}].Count
data modify block 0 -64 0 Items[8].tag set from entity @s Inventory[{Slot:35b}].tag
loot spawn ~ ~ ~ mine 0 -64 0 air{drop_contents:1b}
data modify block 0 -64 0 Items set value [{}]

execute as @e[type=item,distance=..1] if data entity @s {Item:{id:"minecraft:stone"}} run kill @s
execute as @e[type=item,distance=..1] if data entity @s Item.tag.moduleID run kill @s
execute as @e[type=item,distance=..1] if data entity @s Item.tag.gunID run kill @s
execute as @e[type=item,distance=..1] if data entity @s Item.tag.armor run kill @s
execute as @e[type=item,distance=..1] if data entity @s Item.tag.armor_active run kill @s
#scoreboard players operation *1 varTime = @s Pos_x2
#scoreboard players operation *2 varTime = @s Pos_y2
#scoreboard players operation *3 varTime = @s Pos_z2
#execute as @e[type=item,distance=..1] run function zxc/loot/pos