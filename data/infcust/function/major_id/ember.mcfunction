tag @s add inf_immune_temp

execute as @e[type=#infcust:enemies,predicate=infcust:on_fire,tag=!inf_immune_temp,distance=..10] run effect give @s slowness 1 1
execute as @e[type=#infcust:enemies,predicate=infcust:on_fire,tag=!inf_immune_temp,distance=..10] run effect give @s weakness 1

tag @s remove inf_immune_temp
