data modify storage infcust:attributes slot set value "mainhand"

# Keep previous attributes
execute align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~1.1 ~ as @e[type=item,tag=inf_main,distance=..0.1,limit=1,sort=nearest] run function infcust:craft/sword/damage_amount

# Diamond
execute align xyz positioned ~0.5 ~ ~0.5 positioned ~1.05 ~1.43 ~ as @e[type=item,tag=inf_ingredient,distance=..0.1,limit=1,sort=nearest] run function infcust:craft/sword/sword_diamond_ingredient
execute align xyz positioned ~0.5 ~ ~0.5 positioned ~-1.05 ~1.43 ~ as @e[type=item,tag=inf_ingredient,distance=..0.1,limit=1,sort=nearest] run function infcust:craft/sword/sword_emerald_ingredient
execute align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~1.43 ~1.05 as @e[type=item,tag=inf_ingredient,distance=..0.1,limit=1,sort=nearest] run function infcust:craft/sword/sword_netherite_ingredient
execute align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~1.43 ~-1.05 as @e[type=item,tag=inf_ingredient,distance=..0.1,limit=1,sort=nearest] run function infcust:craft/sword/sword_gold_ingredient