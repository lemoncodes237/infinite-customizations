scoreboard players add #temp inf-ingredients 1

function infcust:craft/armor/armor_ingredients

execute if items entity @s container.0 armadillo_scute run function infcust:craft/ingredients/armadillo_scute

scoreboard players operation #emeraldrv inf-id = #rollvalue inf-id