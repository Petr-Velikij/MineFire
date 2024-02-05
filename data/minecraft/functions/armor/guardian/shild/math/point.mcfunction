#[X] = v11[X] + cut1[X]*fabs(prod1[Z])/fabs(prod2[Z]-prod1[Z])
scoreboard players operation Px varTime = LDx varTime
scoreboard players operation VPx varTime = V1x varTime
scoreboard players operation *2 varTime = crossC varTime
execute if score *2 varTime matches ..-1 run scoreboard players operation *2 varTime *= *-1 CONST
scoreboard players operation *3 varTime = crossD varTime
scoreboard players operation *3 varTime -= crossC varTime
execute if score *3 varTime matches ..-1 run scoreboard players operation *3 varTime *= *-1 CONST
scoreboard players operation VPx varTime *= *2 varTime
scoreboard players operation VPx varTime /= *3 varTime
scoreboard players operation Px varTime += VPx varTime

scoreboard players operation Pz varTime = LDz varTime
scoreboard players operation VPz varTime = V1z varTime
scoreboard players operation VPz varTime *= *2 varTime
scoreboard players operation VPz varTime /= *3 varTime
scoreboard players operation Pz varTime += VPz varTime

scoreboard players operation *1 varTime = Px varTime
scoreboard players operation *1 varTime -= Sx varTime
scoreboard players operation *1 varTime *= *100 CONST
scoreboard players operation *1 varTime /= VBx varTime
execute if score *1 varTime matches ..-1 run scoreboard players operation *1 varTime *= *-1 CONST
scoreboard players operation kx varTime = *1 varTime

scoreboard players operation *1 varTime = Pz varTime
scoreboard players operation *1 varTime -= Sz varTime
scoreboard players operation *1 varTime *= *100 CONST
scoreboard players operation *1 varTime /= VBz varTime
execute if score *1 varTime matches ..-1 run scoreboard players operation *1 varTime *= *-1 CONST
scoreboard players operation kz varTime = *1 varTime

scoreboard players operation *1 varTime = VBx varTime
execute if score *1 varTime matches ..-1 run scoreboard players operation *1 varTime *= *-1 CONST
scoreboard players operation *2 varTime = VBx varTime
execute if score *2 varTime matches ..-1 run scoreboard players operation *2 varTime *= *-1 CONST
scoreboard players operation k varTime = kz varTime
execute if score *1 varTime > *2 varTime run scoreboard players operation k varTime = kx varTime

scoreboard players operation Py varTime = VBy varTime 
scoreboard players operation Py varTime *= k varTime
scoreboard players operation Py varTime /= *100 CONST
scoreboard players operation Py varTime += Sy varTime

#tellraw Petr_l [{"text":"kx="},{"score":{"name":"kx","objective":"varTime"}},{"text":" VPx="},{"score":{"name":"VPx","objective":"varTime"}},{"text":" VBx="},{"score":{"name":"VBx","objective":"varTime"}}]
#tellraw Petr_l [{"text":"kz="},{"score":{"name":"kz","objective":"varTime"}},{"text":" VPz="},{"score":{"name":"VPz","objective":"varTime"}},{"text":" VBz="},{"score":{"name":"VBz","objective":"varTime"}}]
#tellraw Petr_l [{"text":"k="},{"score":{"name":"k","objective":"varTime"}},{"text":" Px="},{"score":{"name":"Px","objective":"varTime"}},{"text":" Py="},{"score":{"name":"Py","objective":"varTime"}},{"text":" Pz="},{"score":{"name":"Pz","objective":"varTime"}}]