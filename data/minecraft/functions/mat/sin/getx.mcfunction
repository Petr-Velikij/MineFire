			#======================#
			# made by zcmb command #
			#======================#
			#

# По данной формуле получаем синус X
# sin(x) = (4* x(180 - x))/(40500 - x(180 - x))
# cos(x) = 32400 - 4*x^(2))/(32400 + x^(2))
scoreboard players operation *ANG varTime = *XR varTime
execute if score *ANG varTime matches ..0 run scoreboard players operation *ANG varTime *= *-1 CONST
function minecraft:mat/sin/sin
execute if score *XR varTime matches ..0 run scoreboard players operation *M1 varTime *= *-1 CONST
scoreboard players operation *SINX varTime = *M1 varTime