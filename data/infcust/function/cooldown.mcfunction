# arg1 has cooldown end time
scoreboard players operation #arg1 inf-id -= #time inf-time
scoreboard players operation #arg1 inf-id /= #twenty inf-id

execute store result storage infcust:cooldown cooldown int 1 run scoreboard players get #arg1 inf-id
function infcust:show_cooldown with storage infcust:cooldown