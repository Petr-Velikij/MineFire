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

#scoreboard players operation *1 varTime = @s Pos_x2
#scoreboard players operation *2 varTime = @s Pos_y2
#scoreboard players operation *3 varTime = @s Pos_z2
#execute as @e[type=item,distance=..1] run function zxc/loot/pos