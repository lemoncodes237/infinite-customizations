execute store result score #temp inf-id run data get entity @s Health 100
execute if score #temp inf-id matches 0 run return run function infcust:sword_check_death

tag @s add inf_attacked_temp

execute on attacker if items entity @s weapon.mainhand #swords[custom_data~{inf_venomous:1}] at @s run effect give @e[type=#infcust:enemies,tag=inf_attacked_temp,distance=..20,limit=1,sort=nearest,predicate=!infcust:is_poisoned] poison 10
execute on attacker if items entity @s weapon.mainhand #swords[custom_data~{inf_fragility:1}] at @s run effect give @e[type=#infcust:enemies,tag=inf_attacked_temp,distance=..20,limit=1,sort=nearest] weakness 5
execute on attacker if items entity @s weapon.mainhand #swords[custom_data~{inf_clearsight:1}] at @s run effect give @e[type=#infcust:enemies,tag=inf_attacked_temp,distance=..20,limit=1,sort=nearest] glowing 10 0 true
execute at @s on attacker if items entity @s weapon.mainhand #swords[custom_data~{inf_outlier:1}] run function infcust:major_id/outlier
execute on attacker if items entity @s weapon.mainhand #swords[custom_data~{inf_withering:1}] at @s run effect give @e[type=#infcust:enemies,tag=inf_attacked_temp,distance=..20,limit=1,sort=nearest,predicate=!infcust:is_withered] wither 10

tag @s remove inf_attacked_temp