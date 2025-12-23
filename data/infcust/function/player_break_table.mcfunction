data remove entity @e[type=interaction,tag=inf_magic_table,distance=..0,limit=1] attack

execute if predicate infcust:hold_pickaxe as @e[type=interaction,tag=inf_magic_table,distance=..0,limit=1] positioned ~ ~1.5 ~ run function infcust:delete_table