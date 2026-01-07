scoreboard players add #temp inf-ingredients 1

function infcust:craft/pickaxe/pickaxe_ingredient

execute if items entity @s container.0 nether_wart run function infcust:craft/ingredients/nether_wart
execute if items entity @s container.0 warped_fungus run function infcust:craft/ingredients/warped_fungus
execute if items entity @s container.0 torchflower run function infcust:craft/ingredients/torchflower

scoreboard players operation #netheriterv inf-id = #rollvalue inf-id