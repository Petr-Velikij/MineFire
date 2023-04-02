			#======================#
			# made by zcmb command #
			#======================#
			#

# По данной формуле получаем синус Y
# sin(x) = (4* x(180 - x))/(40500 - x(180 - x))
# cos(x) = 32400 - 4*x^(2))/(32400 + x^(2))
scoreboard players operation *ANG varTime = *YR varTime
execute if score *YR varTime matches 180000.. run scoreboard players remove *ANG varTime 180000
execute if score *ANG varTime matches ..90000 run function minecraft:mat/cos/cos

scoreboard players set *zcbm_90 varTime 0
execute if score *ANG varTime matches 90000.. run scoreboard players set *zcbm_90 varTime 1
execute if score *zcbm_90 varTime matches 1 run scoreboard players remove *ANG varTime 90000
execute if score *zcbm_90 varTime matches 1 run function minecraft:mat/sin/sin



scoreboard players operation *COSY varTime = *M1 varTime
execute if score *YR varTime matches 90000.. if score *YR varTime matches ..270000 run scoreboard players operation *COSY varTime *= *-1 CONST
