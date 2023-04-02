summon marker ~ ~ ~ {Tags:["makusya_point","point"]}
scoreboard players operation @e[type=marker,tag=makusya_point,limit=1,sort=nearest] ArrowLive = @s Power
scoreboard players remove @e[type=marker,tag=makusya_point,limit=1,sort=nearest] ArrowLive 99
scoreboard players operation @e[type=marker,tag=makusya_point,limit=1,sort=nearest] ID.target = @s ID.Player