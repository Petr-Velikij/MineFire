particle dust 0 1 0 2 ~ ~ ~ 0 0 0 0 1 force @a[distance=..250]
execute positioned ~ ~-1 ~ if entity @e[nbt={HurtTime:9s},distance=..2,sort=nearest] run function gun/arrow/gun/neutron/explosion
execute if entity @s[nbt={inGround:1b}] run function gun/arrow/gun/neutron/explosion