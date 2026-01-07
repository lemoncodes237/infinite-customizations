scoreboard players add #temp inf-ingredients 1

function infcust:craft/pickaxe/pickaxe_ingredient

execute if items entity @s container.0 nether_wart run function infcust:craft/ingredients/nether_wart
execute if items entity @s container.0 gold_ingot run function infcust:craft/ingredients/gold_ingot
execute if items entity @s container.0 copper_chain run function infcust:craft/ingredients/copper_chain
execute if items entity @s container.0 torchflower run function infcust:craft/ingredients/torchflower

scoreboard players operation #goldrv inf-id = #rollvalue inf-id