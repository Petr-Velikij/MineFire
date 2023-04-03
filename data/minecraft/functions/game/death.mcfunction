execute if score Стадия Zona matches 1..2 run gamemode spectator @s
execute if score Стадия Zona matches 1..2 run tag @s add Death
stopsound @s player custom.gun.neutron.overclocking_2d

#summon item ~ ~ ~ {Glowing:1b,Item:{id:"minecraft:nether_star",Count:1b,tag:{display:{Name:'{"text":"Патроны","color":"white","italic":false}'}}}}
#execute store result entity @e[type=item,distance=0,limit=1] Item.tag.ammo double 1 run scoreboard players get @s ammo_point

#execute if data entity @s Inventory[{tag:{CustomPotionColor:16772608}}] run function zxc/loot/energy
#execute if data entity @s Inventory[{tag:{CustomPotionColor:65518}}] run function zxc/loot/adrenaline
#execute if data entity @s Inventory[{tag:{CustomPotionColor:11796224}}] run function zxc/loot/analgesic
#execute if data entity @s Inventory[{tag:{CustomPotionColor:16747263}}] run function zxc/loot/regenerations
#execute if data entity @s Inventory[{tag:{CustomPotionColor:16711680}}] run function zxc/loot/healing
#execute if data entity @s Inventory[{tag:{CustomPotionColor:16777215}}] run function zxc/loot/strength

#scoreboard players operation *1 varTime = @s Pos_x2
#scoreboard players operation *2 varTime = @s Pos_y2
#scoreboard players operation *3 varTime = @s Pos_z2
#execute as @e[type=item,distance=..1] run function zxc/loot/pos