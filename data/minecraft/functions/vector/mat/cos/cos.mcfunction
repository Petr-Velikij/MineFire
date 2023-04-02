			#======================#
			# made by zcmb command #
			#======================#
			#
# Сама формула
scoreboard players set *M1 varTime 324000000
scoreboard players set *M2 varTime 40
scoreboard players operation *M2 varTime *= *ANG 
scoreboard players operation *M2 varTime /= *1000 CONST
scoreboard players operation *M2 varTime *= *ANG 
scoreboard players operation *M1 varTime -= *M2 
scoreboard players operation *M2 varTime = *ANG 
scoreboard players operation *M2 varTime /= *1000 CONST
scoreboard players operation *M2 varTime *= *ANG 
scoreboard players add *M2 varTime 32400000
scoreboard players operation *M2 varTime /= *1000 CONST
scoreboard players operation *M1 varTime /= *M2 