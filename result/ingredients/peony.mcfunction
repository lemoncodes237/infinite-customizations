scoreboard players set #rollvalue inf-id 0

data modify storage infcust:craft stat set value "inf-armor"
data modify storage infcust:craft min set value 3
data modify storage infcust:craft max set value 9
data modify storage infcust:craft operation set value "remove"
data modify storage infcust:craft absmin set value 3
function infcust:craft/ingredients/macro with storage infcust:craft
scoreboard players operation #rollvalue inf-id += #amount inf-id



scoreboard players add #temp inf-cost 1
