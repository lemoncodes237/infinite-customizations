scoreboard players add #temp inf-ingredients 1

execute if items entity @s container.0 fire_charge run function infcust:craft/ingredients/fire_charge

scoreboard players operation #goldrv inf-id = #rollvalue inf-id