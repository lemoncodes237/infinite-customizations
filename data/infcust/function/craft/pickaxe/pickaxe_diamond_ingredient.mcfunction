scoreboard players add #temp inf-ingredients 1

function infcust:craft/pickaxe/pickaxe_ingredient

execute if items entity @s container.0 amethyst_shard run function infcust:craft/ingredients/amethyst_shard
execute if items entity @s container.0 charcoal run function infcust:craft/ingredients/charcoal
execute if items entity @s container.0 allium run function infcust:craft/ingredients/allium
execute if items entity @s container.0 diamond run function infcust:craft/ingredients/diamond
execute if items entity @s container.0 poppy run function infcust:craft/ingredients/poppy

scoreboard players operation #diamondrv inf-id = #rollvalue inf-id