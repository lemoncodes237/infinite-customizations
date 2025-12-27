data modify storage infcust:attributes slot set value "feet"

# Keep previous attributes
execute align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~1.1 ~ as @e[type=item,tag=inf_main,distance=..0.1,limit=1,sort=nearest] run function infcust:craft/boots/armor_amount

# Diamond
execute align xyz positioned ~0.5 ~ ~0.5 positioned ~1.05 ~1.43 ~ as @e[type=item,tag=inf_ingredient,distance=..0.1,limit=1,sort=nearest] run function infcust:craft/boots/boots_diamond_ingredient
execute align xyz positioned ~0.5 ~ ~0.5 positioned ~-1.05 ~1.43 ~ as @e[type=item,tag=inf_ingredient,distance=..0.1,limit=1,sort=nearest] run function infcust:craft/boots/boots_emerald_ingredient
execute align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~1.43 ~1.05 as @e[type=item,tag=inf_ingredient,distance=..0.1,limit=1,sort=nearest] run function infcust:craft/boots/boots_netherite_ingredient
execute align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~1.43 ~-1.05 as @e[type=item,tag=inf_ingredient,distance=..0.1,limit=1,sort=nearest] run function infcust:craft/boots/boots_gold_ingredient