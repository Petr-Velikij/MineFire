			#======================#
			# made by zcmb command #
			#======================#
			#
# Сама формула
scoreboard players set *M1 varTime 180000
scoreboard players operation *M1 varTime -= *ANG varTime
scoreboard players operation *M1 varTime /= *100 CONST
scoreboard players operation *M1 varTime *= *ANG varTime
scoreboard players operation *M1 varTime *= *4 CONST
scoreboard players set *M2 varTime 180000
scoreboard players set *M3 varTime 40500000
scoreboard players operation *M2 varTime -= *ANG varTime
scoreboard players operation *M2 varTime /= *1000 CONST
scoreboard players operation *M2 varTime *= *ANG varTime
scoreboard players operation *M3 varTime -= *M2 varTime
scoreboard players operation *M3 varTime /= *1000 CONST
scoreboard players operation *M1 varTime /= *M3 varTime