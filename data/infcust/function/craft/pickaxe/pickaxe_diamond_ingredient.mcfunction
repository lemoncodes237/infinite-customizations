scoreboard players add #temp inf-ingredients 1

function infcust:craft/pickaxe/pickaxe_ingredient

execute if items entity @s container.0 amethyst_shard run function infcust:craft/ingredients/amethyst_shard
execute if items entity @s container.0 charcoal run function infcust:craft/ingredients/charcoal

scoreboard players operation #diamondrv inf-id = #rollvalue inf-id