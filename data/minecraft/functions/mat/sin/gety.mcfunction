			#======================#
			# made by zcmb command #
			#======================#
			#
			
# По данной формуле получаем синус Y
# sin(x) = (4* x(180 - x))/(40500 - x(180 - x))
# cos(x) = 32400 - 4*x^(2))/(32400 + x^(2))
scoreboard players operation *ANG varTime = *YR varTime
execute if score *ANG varTime matches 180000.. run scoreboard players remove *ANG varTime 180000
function minecraft:mat/sin/sin
execute if score *YR varTime matches 180000.. run scoreboard players operation *M1 varTime *= *-1 CONST
scoreboard players operation *SINY varTime = *M1 varTime