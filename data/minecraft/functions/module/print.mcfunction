title @s times 0 5 2
title @s title {"text":""}
execute if score @s module_effect matches 0 if score @s module_cooldown matches 1.. run function module/math_cooldown
execute if score @s module_effect matches 0 if score @s module_cooldown matches 1.. run title @s subtitle [{"text":"Зарядка "},{"score":{"name":"*1","objective":"varTime"}},{"text":","},{"score":{"name":"*2","objective":"varTime"}},{"text":"с"}]
execute if score @s module_cooldown matches 0 if score @s module_effect matches 0 run title @s subtitle [{"text":"Заряжен"}]
execute if score @s module_effect matches 1.. run function module/math_effect
execute if score @s module_effect matches 1.. run title @s subtitle [{"text":"Активен "},{"score":{"name":"*1","objective":"varTime"}},{"text":","},{"score":{"name":"*2","objective":"varTime"}},{"text":"с"}]