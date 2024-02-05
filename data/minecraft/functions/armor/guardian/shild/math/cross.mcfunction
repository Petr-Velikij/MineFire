#cross(V1 * (S - LD))
scoreboard players operation V3x varTime = Sx varTime
scoreboard players operation V3x varTime -= LDx varTime
scoreboard players operation V3z varTime = Sz varTime
scoreboard players operation V3z varTime -= LDz varTime
scoreboard players operation crossA varTime = V1z varTime
scoreboard players operation crossA varTime *= V3x varTime
scoreboard players operation *1 varTime = V1x varTime
scoreboard players operation *1 varTime *= V3z varTime
scoreboard players operation crossA varTime -= *1 varTime
#cross(V1 * (E - LD))
scoreboard players operation V3x varTime = Ex varTime
scoreboard players operation V3x varTime -= LDx varTime
scoreboard players operation V3z varTime = Ez varTime
scoreboard players operation V3z varTime -= LDz varTime
scoreboard players operation crossB varTime = V1z varTime
scoreboard players operation crossB varTime *= V3x varTime
scoreboard players operation *1 varTime = V1x varTime
scoreboard players operation *1 varTime *= V3z varTime
scoreboard players operation crossB varTime -= *1 varTime
#cross(Vb * (LD - S))
scoreboard players operation V3x varTime = LDx varTime
scoreboard players operation V3x varTime -= Sx varTime
scoreboard players operation V3z varTime = LDz varTime
scoreboard players operation V3z varTime -= Sz varTime
scoreboard players operation crossC varTime = VBz varTime
scoreboard players operation crossC varTime *= V3x varTime
scoreboard players operation *1 varTime = VBx varTime
scoreboard players operation *1 varTime *= V3z varTime
scoreboard players operation crossC varTime -= *1 varTime
#cross(Vb * (RD - S))
scoreboard players operation V3x varTime = RDx varTime
scoreboard players operation V3x varTime -= Sx varTime
scoreboard players operation V3z varTime = RDz varTime
scoreboard players operation V3z varTime -= Sz varTime
scoreboard players operation crossD varTime = VBz varTime
scoreboard players operation crossD varTime *= V3x varTime
scoreboard players operation *1 varTime = VBx varTime
scoreboard players operation *1 varTime *= V3z varTime
scoreboard players operation crossD varTime -= *1 varTime