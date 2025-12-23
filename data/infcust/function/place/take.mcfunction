execute positioned ~ ~1 ~ run data merge entity @e[type=item,tag=inf_ingredient,distance=..1.5,sort=nearest,limit=1] {NoGravity:false,PickupDelay:0}
execute positioned ~ ~1 ~ run tp @e[type=item,tag=inf_ingredient,distance=..1.5,sort=nearest,limit=1] @s
execute as @e[type=interaction,tag=inf_magic,tag=inf_taken,distance=..0] run function infcust:place/remove_tags