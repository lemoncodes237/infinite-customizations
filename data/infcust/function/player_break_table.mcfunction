data remove entity @e[type=interaction,tag=inf_magic_table,distance=..0,limit=1] attack

execute if predicate infcust:hold_pickaxe run function infcust:give_table

execute if predicate infcust:hold_pickaxe as @e[type=interaction,tag=inf_magic_table,distance=..0,limit=1] positioned ~ ~1.5 ~ run function infcust:delete_table

# If sneaking right click, time to craft!
execute if predicate infcust:is_sneaking unless items entity @s weapon.mainhand * as @e[type=interaction,tag=inf_magic_table,distance=..0,limit=1,tag=inf_boots,tag=inf_taken] run function infcust:craft/craft