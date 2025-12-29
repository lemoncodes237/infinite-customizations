scoreboard players add #temp inf-ingredients 1

execute if items entity @s container.0 amethyst_shard run function infcust:craft/ingredients/amethyst_shard

scoreboard players operation #emeraldrv inf-id = #rollvalue inf-id