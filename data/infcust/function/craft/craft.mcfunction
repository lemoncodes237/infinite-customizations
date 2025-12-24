function infcust:craft/reset_score

execute at @s if entity @s[tag=inf_boots] run function infcust:craft/boots/boots

execute at @s positioned ~ ~1.1 ~ as @e[type=item,tag=inf_ingredient,distance=..0.1,tag=inf_main,limit=1,sort=nearest] run function infcust:craft/add_attributes