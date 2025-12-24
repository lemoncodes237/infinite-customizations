execute at @e[type=interaction,tag=inf_magic_table,tag=inf_taken,distance=..0] positioned ~ ~1.5 ~ run return run function infcust:place/take_main

execute positioned ~ ~1 ~ run data merge entity @e[type=item,tag=inf_ingredient,distance=..1.5,sort=nearest,limit=1] {NoGravity:false,PickupDelay:0}
execute positioned ~ ~1 ~ run tp @e[type=item,tag=inf_ingredient,distance=..1.5,sort=nearest,limit=1] @s

tag @e[type=interaction,tag=inf_magic,tag=inf_taken,distance=..0] remove inf_taken