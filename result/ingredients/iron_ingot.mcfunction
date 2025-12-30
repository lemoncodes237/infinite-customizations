scoreboard players set #rollvalue inf-id 0

scoreboard players add #temp inf-sharpness 1

data modify storage infcust:craft stat set value "inf-speed"
data modify storage infcust:craft min set value -6
data modify storage infcust:craft max set value -2
data modify storage infcust:craft operation set value "add"
data modify storage infcust:craft absmin set value 6
function infcust:craft/ingredients/macro with storage infcust:craft
scoreboard players operation #rollvalue inf-id += #amount inf-id



scoreboard players add #temp inf-cost 5
