kill @e[type=interaction,tag=inf_magic,distance=..2]
kill @e[type=block_display,distance=..2]
kill @s

particle block_crumble{block_state:{Name:stone}} ~ ~-0.9 ~ 0.8 0.4 0.8 0.1 30
playsound block.stone.break block @a ~ ~ ~