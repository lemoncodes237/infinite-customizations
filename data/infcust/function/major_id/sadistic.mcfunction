tag @s add inf_notme_temp

execute if entity @e[type=#infcust:enemies,tag=!inf_notme_temp,distance=..10,predicate=infcust:is_slowed] run effect give @s speed 5 2 true

tag @s remove inf_notme_temp