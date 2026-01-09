scoreboard players add #temp inf-ingredients 1

function infcust:craft/armor/armor_ingredients
function infcust:craft/armor/armor_emerald_ingredients
function infcust:craft/armor/chestplate_ingredients

execute if items entity @s container.0 armadillo_scute run function infcust:craft/ingredients/armadillo_scute
execute if items entity @s container.0 lapis_lazuli run function infcust:craft/ingredients/lapis_lazuli
execute if items entity @s container.0 flowering_azalea run function infcust:craft/ingredients/flowering_azalea
execute if items entity @s container.0 trial_key run function infcust:craft/ingredients/trial_key
execute if items entity @s container.0 phantom_membrane run function infcust:craft/ingredients/phantom_membrane
execute if items entity @s container.0 emerald run function infcust:craft/ingredients/emerald
execute if items entity @s container.0 pale_oak_sapling run function infcust:craft/ingredients/pale_oak_sapling
execute if items entity @s container.0 sunflower run function infcust:craft/ingredients/sunflower

scoreboard players operation #emeraldrv inf-id = #rollvalue inf-id