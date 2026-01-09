execute on attacker unless items entity @s weapon.mainhand #swords[custom_data~{inf_winded:1}] run return 0

execute on attacker run tag @s add inf_immune_temp

execute if predicate infcust:is_slowed run effect give @e[type=#infcust:enemies,tag=!inf_immune_temp,distance=..5] slowness 7 0
execute if predicate infcust:is_withered run effect give @e[type=#infcust:enemies,tag=!inf_immune_temp,distance=..5] wither 7 0
execute if predicate infcust:is_poisoned run effect give @e[type=#infcust:enemies,tag=!inf_immune_temp,distance=..5] poison 7 0

execute on attacker run tag @s remove inf_immune_temp