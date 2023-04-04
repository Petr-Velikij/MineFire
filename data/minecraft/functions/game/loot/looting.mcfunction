execute at @s[gamemode=!spectator,tag=!sneak,scores={sneak_time=1}] as @e[type=armor_stand,tag=there_item,limit=1,sort=nearest,distance=..3] at @s run function game/loot/spawn_item
execute if score @s sneak_time matches 1 run tag @s add sneak
execute if score @s sneak_time matches 0 run tag @s remove sneak