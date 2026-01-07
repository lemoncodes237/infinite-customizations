scoreboard players add #temp inf-ingredients 1

function infcust:craft/armor/armor_ingredients
function infcust:craft/armor/armor_emerald_ingredients
function infcust:craft/armor/helmet_ingredients

execute if items entity @s container.0 nautilus_shell run function infcust:craft/ingredients/nautilus_shell
execute if items entity @s container.0 jungle_sapling run function infcust:craft/ingredients/jungle_sapling
execute if items entity @s container.0 honeycomb run function infcust:craft/ingredients/honeycomb

scoreboard players operation #emeraldrv inf-id = #rollvalue inf-id