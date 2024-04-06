title @s times 0 4 0
function gun/marble/progresbar
execute if score @s Power matches 100 run title @s subtitle [{"score":{"name":"@s","objective":"Power"}},{"text":"%"}]
execute if score @s Power matches 10..99 run title @s subtitle [{"score":{"name":"@s","objective":"Power"}},{"text":"%"}]
execute if score @s Power matches ..9 run title @s subtitle [{"score":{"name":"@s","objective":"Power"}},{"text":"%"}]