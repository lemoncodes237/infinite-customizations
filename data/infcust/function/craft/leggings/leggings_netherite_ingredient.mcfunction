scoreboard players add #temp inf-ingredients 1

execute if items entity @s container.0 rotten_flesh run function infcust:craft/ingredients/rotten_flesh

scoreboard players operation #netheriterv inf-id = #rollvalue inf-id