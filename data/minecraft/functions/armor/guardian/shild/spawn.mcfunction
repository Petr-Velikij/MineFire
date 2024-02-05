summon armor_stand ^ ^1.5 ^2 {Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Mshild","new"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:804}}]}
execute as @e[type=armor_stand,tag=Mshild,tag=new,limit=1,distance=..10] positioned as @s run tp @s ~ ~ ~ ~ ~
summon marker ^-2 ^-0.1 ^2 {Tags:["Mshild","ld","new"]}
summon marker ^2 ^-0.1 ^2 {Tags:["Mshild","rd","new"]}
summon marker ^-2 ^3 ^2 {Tags:["Mshild","lu","new"]}
scoreboard players operation @e[tag=new,distance=..10] ID.Owner = @s ID.Player
tag @e[tag=new,distance=..10] remove new

playsound block.beacon.activate player @a[distance=..30] ~ ~1 ~ 1 1.5
scoreboard players set @s armor_cooldown 900