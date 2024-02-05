stopsound @s player minecraft:custom.armor.spetsnaz.zipline
playsound minecraft:custom.armor.spetsnaz.zipline_end player @s ~ ~ ~ 1 1
execute positioned as @e[type=armor_stand,tag=zipline,distance=..0.5,limit=1] run tp @s ~ ~ ~
kill @e[type=marker,tag=my_zipline,distance=..10]
tag @s remove move_zipline