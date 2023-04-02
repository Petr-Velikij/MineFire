scoreboard players operation @s Power *= magmaCooling CONST
scoreboard players operation @s Power /= *100 CONST
execute if score @s Power matches ..99 run scoreboard players set @s Power 100