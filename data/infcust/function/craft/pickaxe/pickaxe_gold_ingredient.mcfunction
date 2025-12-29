scoreboard players add #temp inf-ingredients 1

execute if items entity @s container.0 nether_wart run function infcust:craft/ingredients/nether_wart

scoreboard players operation #goldrv inf-id = #rollvalue inf-id