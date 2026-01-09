# ID giving code
execute as @a unless score @s inf-id matches -2147483648..2147483647 run function infcust:give_id

scoreboard players set #armor-check-time inf-time 0

execute as @a if items entity @s armor.* *[custom_data~{inf_darkvision:1}] run effect give @s night_vision 11 0 true
execute as @a if items entity @s armor.chest *[custom_data~{inf_heros_journey:1}] run effect give @s hero_of_the_village 1 0 true
execute as @a if items entity @s armor.chest *[custom_data~{inf_sneak:1}] run effect give @s invisibility 1 0 true
execute as @a if items entity @s armor.head *[custom_data~{inf_diurnal:1}] at @s run function infcust:major_id/diurnal
execute as @a if items entity @s armor.head *[custom_data~{inf_nocturnal:1}] at @s run function infcust:major_id/nocturnal
execute as @a if items entity @s armor.head *[custom_data~{inf_claustrophilia:1}] at @s run function infcust:major_id/claustrophilia
execute as @a if items entity @s armor.chest *[custom_data~{inf_lunishield:1}] at @s run function infcust:major_id/lunishield
execute as @a if items entity @s armor.chest *[custom_data~{inf_helioshield:1}] at @s run function infcust:major_id/helioshield
execute as @a if items entity @s armor.legs *[custom_data~{inf_invincibility:1}] at @s run function infcust:major_id/invincibility
execute as @a if items entity @s armor.feet *[custom_data~{inf_aquavigor:1}] at @s run function infcust:major_id/aquavigor
execute as @a if items entity @s armor.chest *[custom_data~{inf_subterranean:1}] at @s run function infcust:major_id/subterranean
execute as @a if items entity @s armor.legs *[custom_data~{inf_chihayaburu:1}] at @s run function infcust:major_id/chihayaburu
execute as @a if items entity @s armor.feet *[custom_data~{inf_sadistic:1}] at @s run function infcust:major_id/sadistic
execute as @a if items entity @s armor.head *[custom_data~{inf_cultist:1}] at @s run function infcust:major_id/cultist
execute as @a if items entity @s armor.feet *[custom_data~{inf_malady:1}] at @s run function infcust:major_id/malady/malady
execute as @a if items entity @s armor.head *[custom_data~{inf_ember:1}] at @s run function infcust:major_id/ember

execute as @e[type=marker,tag=inf_malady_cloud] at @s run function infcust:major_id/malady/malady_cloud

# This is holding sword check but whatevs
execute as @a if items entity @s weapon.mainhand *[custom_data~{inf_antithesis:1}] run function infcust:major_id/antithesis
execute as @a if items entity @s weapon.mainhand *[custom_data~{inf_darkvision:1}] run effect give @s night_vision 11 0 true
execute as @a run function infcust:major_id/xin