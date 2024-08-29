tp @e[type=item,tag=MyItem,distance=..20,limit=1] ~ ~-0.1 ~

execute store result entity @e[type=item,tag=MyItem,distance=..20,limit=1] Motion[0] double 0.0001 run scoreboard players get @s varTimeEntity1
execute store result entity @e[type=item,tag=MyItem,distance=..20,limit=1] Motion[1] double 0.0001 run scoreboard players get @s varTimeEntity2
execute store result entity @e[type=item,tag=MyItem,distance=..20,limit=1] Motion[2] double 0.0001 run scoreboard players get @s varTimeEntity3