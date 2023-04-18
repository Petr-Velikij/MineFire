summon marker ~ ~ ~ {Tags:["footprint","new_footprint"]}
scoreboard players operation @e[type=marker,tag=new_footprint,limit=1,distance=..1] ID.Owner = @s ID.Team
scoreboard players set @e[type=marker,tag=new_footprint,limit=1,distance=..1] Loop 1200
tag @e[type=marker,tag=new_footprint,limit=1,distance=..1] remove new_footprint