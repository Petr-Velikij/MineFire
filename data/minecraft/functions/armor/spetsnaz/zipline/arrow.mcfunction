scoreboard players operation @s ID.Zipline = buf ID.Zipline

execute at @e[type=armor_stand,tag=my_zipline,distance=..55,limit=1] run summon marker ~ ~0.4 ~ {Tags:["marker"]}
tp @s ~ ~ ~ facing entity @e[type=marker,tag=marker,distance=..55,limit=1]
kill @e[type=marker,tag=marker,distance=..55,limit=1]

scoreboard players set coefficient Random 0
scoreboard players set *YR.correct varTime 0
function vector/get_vec
execute store result entity @s Motion[0] double 0.00008 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.00008 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.00008 run scoreboard players get *Z varTime