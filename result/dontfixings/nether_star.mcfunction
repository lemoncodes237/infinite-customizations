scoreboard players set #rollvalue inf-id 0

data modify storage infcust:craft stat set value "inf-hp"
data modify storage infcust:craft min set value -100
data modify storage infcust:craft max set value -40
data modify storage infcust:craft operation set value "add"
data modify storage infcust:craft absmin set value 100
function infcust:craft/ingredients/macro with storage infcust:craft
scoreboard players operation #rollvalue inf-id += #amount inf-id



scoreboard players add #temp inf-cost 12

scoreboard players set #inf-cultist inf-id 1