loot replace entity 00000000-0000-0000-0000-000000000000 weapon loot minecraft:number
execute store result score Number Random run data get entity 00000000-0000-0000-0000-000000000000 HandItems[{}].Count

scoreboard players operation Output Random = Number Random
scoreboard players operation Output Random *= coefficient Random