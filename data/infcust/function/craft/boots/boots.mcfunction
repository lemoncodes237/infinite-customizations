data modify storage infcust:attributes slot set value "feet"

# Diamond
execute align xyz positioned ~0.5 ~ ~0.5 positioned ~1.05 ~1.43 ~ as @e[type=item,tag=inf_ingredient,distance=..0.1,limit=1,sort=nearest] run function infcust:craft/boots/boots_diamond_ingredient