scoreboard players add #temp inf-ingredients 1

function infcust:craft/armor/armor_ingredients
function infcust:craft/armor/armor_gold_ingredients
function infcust:craft/armor/leggings_ingredients

execute if items entity @s container.0 azalea run function infcust:craft/ingredients/azalea
execute if items entity @s container.0 acacia_sapling run function infcust:craft/ingredients/acacia_sapling
execute if items entity @s container.0 wither_skeleton_skull run function infcust:craft/ingredients/wither_skeleton_skull
execute if items entity @s container.0 popped_chorus_fruit run function infcust:craft/ingredients/popped_chorus_fruit

scoreboard players operation #goldrv inf-id = #rollvalue inf-id