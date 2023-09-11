# trigger_sethp

# change to max earned instead of base max...



execute if score @s rpghp < @s rpghp.earnt_hp run scoreboard players operation @s rpghp.hpch = @s rpghp
#scoreboard players operation @s rpghp.hpch = @s rpghp

execute if score @s rpghp < @s rpghp.earnt_hp run tellraw @s ["",{"text":"HP Set: ","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger rpghp set "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set hp.\n(up to your earned maximum HP)","color":"gray"},{"text":"\nAccepts: whole numbers 1+","color":"dark_gray"}]}},{"score":{"name":"@s","objective":"rpghp.hpch"},"color":"gray"},{"text":"","color":"gray"}]
execute if score @s rpghp > @s rpghp.earnt_hp run tellraw @s ["",{"text":"You don't have that much EXP!!!\nEarned Max HP: ","color":"red"},{"score":{"name":"@s","objective":"rpghp.earnt_hp"},"color":"gray"}]

scoreboard players set @s rpghp.hpchoose 0