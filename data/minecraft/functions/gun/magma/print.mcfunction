title @s times 0 3 0
execute if score @s sneak_time matches 0 run title @s title {"text":""}
execute unless score @s sneak_time matches 0 run function gun/magma/progresbar
execute unless score @s Power matches 150.. run title @s subtitle [{"translate":"space.100"},{"score":{"name":"@s","objective":"Power"}},{"text":"%"}]
execute if score @s Power matches 150.. run title @s subtitle [{"translate":"space.100"},{"score":{"name":"@s","objective":"Power"},"color":"red"},{"text":"%"}]