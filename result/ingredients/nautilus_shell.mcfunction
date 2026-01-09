scoreboard players set #rollvalue inf-id 0

scoreboard players add #temp inf-aquaaffinity 1

data modify storage infcust:craft stat set value "inf-respiration"
data modify storage infcust:craft min set value 1
data modify storage infcust:craft max set value 4
data modify storage infcust:craft operation set value "remove"
data modify storage infcust:craft absmin set value 1
function infcust:craft/ingredients/macro with storage infcust:craft
scoreboard players operation #rollvalue inf-id += #amount inf-id



scoreboard players add #temp inf-cost 5
