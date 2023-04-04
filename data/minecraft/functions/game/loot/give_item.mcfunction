execute store result score *1 varTime run data get entity @s UUID[0]
execute store result score *2 varTime run data get entity @s UUID[1]
execute store result score *3 varTime run data get entity @s UUID[2]
execute store result score *4 varTime run data get entity @s UUID[3]

execute if score *1 varTime = UUID[0] varTime if score *2 varTime = UUID[1] varTime if score *3 varTime = UUID[2] varTime if score *4 varTime = UUID[3] varTime run loot give @s mine 0 -64 0 air{drop_contents:1b}