execute if entity @s[tag=inf_already_crafted] run return 0

function infcust:craft/reset_score

execute at @s if entity @s[tag=inf_boots] run function infcust:craft/boots/boots
execute at @s if entity @s[tag=inf_chestplate] run function infcust:craft/chestplate/chestplate
execute at @s if entity @s[tag=inf_leggings] run function infcust:craft/leggings/leggings
execute at @s if entity @s[tag=inf_helmet] run function infcust:craft/helmet/helmet
execute at @s if entity @s[tag=inf_sword] run function infcust:craft/sword/sword
execute at @s if entity @s[tag=inf_pickaxe] run function infcust:craft/pickaxe/pickaxe

# Price Check!
execute store result score @s inf-cost run experience query @a[tag=inf_crafter,limit=1,distance=..20] levels
execute if score @s inf-cost < #temp inf-cost run return run function infcust:craft/not_enough

# Don't want negatives
execute if score #temp inf-cost matches ..0 run scoreboard players set #temp inf-cost 0
# Refund!
scoreboard players operation @s inf-cost -= #temp inf-cost
execute store result storage infcust:temp exp int 1 run scoreboard players get @s inf-cost
function infcust:craft/set_exp with storage infcust:temp

# Also don't craft if there literally are no ingredients lmao
execute if score #temp inf-ingredients matches 0 run return run title @a[tag=inf_crafter,distance=..20,limit=1] actionbar "You need at least one ingredient!"

# Now kill everything
execute align xyz positioned ~0.5 ~ ~0.5 positioned ~1.05 ~1.43 ~ as @e[type=item,tag=inf_ingredient,distance=..0.1,limit=1,sort=nearest] at @s run function infcust:craft/particle/diamond
execute align xyz positioned ~0.5 ~ ~0.5 positioned ~-1.05 ~1.43 ~ as @e[type=item,tag=inf_ingredient,distance=..0.1,limit=1,sort=nearest] at @s run function infcust:craft/particle/emerald
execute align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~1.43 ~1.05 as @e[type=item,tag=inf_ingredient,distance=..0.1,limit=1,sort=nearest] at @s run function infcust:craft/particle/netherite
execute align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~1.43 ~-1.05 as @e[type=item,tag=inf_ingredient,distance=..0.1,limit=1,sort=nearest] at @s run function infcust:craft/particle/gold

execute at @s positioned ~ ~1.1 ~ as @e[type=item,distance=..0.1,tag=inf_main,limit=1,sort=nearest] run function infcust:craft/add_attributes

playsound item.trident.thunder master @a ~ ~ ~ 1 0.5

particle sonic_boom ~ ~1.1 ~ 0.3 0.3 0.3 0 5
particle portal ~ ~1.1 ~ 0.3 0.3 0.3 0.1 20

tag @s add inf_already_crafted