scoreboard players set #rollvalue inf-id 0

data modify storage infcust:craft stat set value "inf-hp"
data modify storage infcust:craft min set value 5
data modify storage infcust:craft max set value 15
data modify storage infcust:craft operation set value "remove"
data modify storage infcust:craft absmin set value 5
function infcust:craft/ingredients/macro with storage infcust:craft
scoreboard players operation #rollvalue inf-id += #amount inf-id



scoreboard players add #temp inf-cost 2
