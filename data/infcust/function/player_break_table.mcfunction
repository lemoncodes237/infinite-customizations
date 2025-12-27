data remove entity @e[type=interaction,tag=inf_magic_table,distance=..0,limit=1] attack

execute if predicate infcust:hold_pickaxe run function infcust:give_table

execute if predicate infcust:hold_pickaxe as @e[type=interaction,tag=inf_magic_table,distance=..0,limit=1] positioned ~ ~1.5 ~ run function infcust:delete_table

tag @s add inf_crafter

# If sneaking left click, time to craft!
execute if predicate infcust:is_sneaking unless predicate infcust:hold_pickaxe as @e[type=interaction,tag=inf_magic_table,distance=..0,limit=1,tag=inf_taken] run function infcust:craft/craft

tag @s remove inf_crafter