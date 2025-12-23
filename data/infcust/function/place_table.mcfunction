tag @s add inf_place_table_temp
advancement revoke @s only infcust:place_table

execute at @s as @e[type=item_frame,tag=inf_magic_table,distance=..10] at @s align xyz positioned ~0.5 ~ ~0.5 run function infcust:summon_table