execute store result score UUID[0] varTime run data get entity @s interaction.player[0]
execute store result score UUID[1] varTime run data get entity @s interaction.player[1]
execute store result score UUID[2] varTime run data get entity @s interaction.player[2]
execute store result score UUID[3] varTime run data get entity @s interaction.player[3]
execute positioned ~ ~-0.7 ~ as @e[type=armor_stand,tag=loot,sort=nearest,limit=1] run function game/loot/spawn_item
kill @s