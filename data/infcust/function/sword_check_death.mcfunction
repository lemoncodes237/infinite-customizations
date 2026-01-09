execute if predicate infcust:is_glowing on attacker if items entity @s weapon.mainhand #swords[custom_data~{inf_photophage:1}] at @s run effect give @s regeneration 5 1 true
execute on attacker if items entity @s weapon.mainhand #swords[custom_data~{inf_bloodlust:1}] at @s run function infcust:major_id/bloodlust
execute at @s run function infcust:major_id/winded
execute on attacker if items entity @s weapon.mainhand #swords[custom_data~{inf_detonate:1}] run function infcust:major_id/detonate
execute if predicate infcust:is_slowed on attacker if items entity @s weapon.mainhand #swords[custom_data~{inf_iatrophage:1}] at @s run effect give @s saturation 100 0 true