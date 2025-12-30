scoreboard players add #temp inf-ingredients 1

function infcust:craft/armor/armor_ingredients
function infcust:craft/armor/armor_emerald_ingredients

execute if items entity @s container.0 armadillo_scute run function infcust:craft/ingredients/armadillo_scute
execute if items entity @s container.0 lapis_lazuli run function infcust:craft/ingredients/lapis_lazuli

scoreboard players operation #emeraldrv inf-id = #rollvalue inf-id