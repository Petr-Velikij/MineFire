scoreboard players operation buf ID.target = @a[gamemode=!spectator,distance=..80,tag=select,limit=1] ID.Player
execute as @e[type=armor_stand,tag=marcer_enemy,distance=..5] if score @s ID.target = buf ID.target run scoreboard players set detection varTime 2
execute as @e[type=armor_stand,tag=marcer_enemy,distance=..5] if score @s ID.target = buf ID.target run tag @s add old