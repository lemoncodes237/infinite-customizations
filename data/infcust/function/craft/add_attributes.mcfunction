say hi

data modify storage infcust:attributes operation set value "add_value"

execute unless score #temp inf-hp matches 0 run data modify storage infcust:attributes type set value "max_health"
execute unless score #temp inf-hp matches 0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-hp
function infcust:craft/attribute_macro with storage infcust:attributes