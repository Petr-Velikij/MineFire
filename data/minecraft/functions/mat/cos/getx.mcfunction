			#======================#
			# made by zcmb command #
			#======================#
			#
			
# По данной формуле получаем косинус X
# sin(x) = (4* x(180 - x))/(40500 - x(180 - x))
# cos(x) = 32400 - 4*x^(2))/(32400 + x^(2))
scoreboard players operation *ANG varTime = *XR varTime
execute if score *ANG varTime matches ..0 run scoreboard players operation *ANG varTime *= *-1 CONST
function minecraft:mat/cos/cos
scoreboard players operation *COSX varTime = *M1 varTime