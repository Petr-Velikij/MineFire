summon armor_stand ~ ~ ~ {Silent:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["marcer_enemy","new","detected_enemy"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:803}}]}
scoreboard players operation @e[type=armor_stand,distance=..1,tag=new,limit=1] ID.target = @a[gamemode=!spectator,distance=..160,tag=select,limit=1] ID.Player
#tellraw @a ["",{"text":"ID: "},{"score":{"name":"@e[type=armor_stand,distance=..1,tag=new,limit=1]","objective":"ID.target"}}]
tag @e[type=armor_stand,distance=..1,tag=new] remove new