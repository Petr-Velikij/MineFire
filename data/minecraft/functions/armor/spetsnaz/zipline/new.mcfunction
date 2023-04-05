scoreboard players operation buf ID.Zipline = @s ID.Player
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:0b,Tags:["zipline","new_zipline","start_zipline"]}
scoreboard players operation @e[type=armor_stand,tag=new_zipline,distance=..5] ID.Zipline = buf ID.Zipline

scoreboard players set *1 varTime 150
execute positioned ~ ~1.6 ~ run function armor/spetsnaz/zipline/loop
tag @e[type=armor_stand,tag=new_zipline,distance=..5] remove new_zipline
playsound minecraft:entity.armor_stand.hit player @a[distance=..20] ~ ~ ~ 2 1
scoreboard players add @s armor_cooldown 1600