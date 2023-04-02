particle lava ~ ~ ~ 0.05 0.05 0.05 0 30 force @a[distance=..75]
summon arrow ~ ~ ~ {Fire:200,damage:1d,Tags:["flame"]}
summon arrow ~ ~ ~ {Fire:200,damage:1d,Tags:["flame"]}
summon arrow ~ ~ ~ {Fire:200,damage:1d,Tags:["flame"]}
summon arrow ~ ~ ~ {Fire:200,damage:1d,Tags:["flame"]}
summon arrow ~ ~ ~ {Fire:200,damage:1d,Tags:["flame"]}
summon arrow ~ ~ ~ {Fire:200,damage:1d,Tags:["flame"]}
summon arrow ~ ~ ~ {Fire:200,damage:1d,Tags:["flame"]}
summon arrow ~ ~ ~ {Fire:200,damage:1d,Tags:["flame"]}
summon arrow ~ ~ ~ {Fire:200,damage:1d,Tags:["flame"]}
summon arrow ~ ~ ~ {Fire:200,damage:1d,Tags:["flame"]}
summon arrow ~ ~ ~ {Fire:200,damage:1d,Tags:["flame"]}
summon arrow ~ ~ ~ {Fire:200,damage:1d,Tags:["flame"]}
summon arrow ~ ~ ~ {Fire:200,damage:1d,Tags:["flame"]}
summon arrow ~ ~ ~ {Fire:200,damage:1d,Tags:["flame"]}
summon arrow ~ ~ ~ {Fire:200,damage:1d,Tags:["flame"]}

scoreboard players operation buf ID.Owner = @s ID.Owner
execute as @a[gamemode=!spectator] if score @s ID.Player = buf ID.Owner run tag @s add Owner
setblock 0 -63 0 air
setblock 0 -63 0 oak_sign{Color:"-1",Text1:'[{"selector":"@p[tag=Owner]"},{"text":" используя "},{"text":"[зажигательный порошок]","color":"#FF7700"}]'} replace
tag @a remove Owner
execute as @e[type=arrow,distance=0,limit=15,tag=flame] run data modify entity @s CustomName set from block 0 -63 0 Text1

execute as @e[type=arrow,distance=0,limit=15,tag=flame] run scoreboard players operation @s ID.Owner = buf ID.Owner
execute as @e[type=arrow,distance=0,limit=15,tag=flame] run scoreboard players set @s ArrowLive 100
execute at @e[type=arrow,distance=0,limit=15,tag=flame] as @e[type=arrow,distance=0,limit=2,tag=flame,sort=random] run scoreboard players add @s ArrowLive 10
execute as @e[type=arrow,distance=0,limit=15,tag=flame] run function armor/alchemist/fire/mat
kill @s