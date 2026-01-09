execute if predicate infcust:on_ground run return run attribute @s attack_damage modifier remove infcust:xin
execute unless items entity @s weapon.mainhand *[custom_data~{inf_xin:1}] run return run attribute @s attack_damage modifier remove infcust:xin

execute store result score #normaljump inf-id run attribute @s jump_strength base get 1000
execute store result score #currentjump inf-id run attribute @s jump_strength get 10000

scoreboard players operation #currentjump inf-id /= #normaljump inf-id
scoreboard players remove #currentjump inf-id 10
scoreboard players operation #currentjump inf-id /= #five inf-id
execute store result storage infcust:xin amt int 1 run scoreboard players get #currentjump inf-id

execute if score #currentjump inf-id matches 1.. run function infcust:major_id/xin_macro with storage infcust:xin