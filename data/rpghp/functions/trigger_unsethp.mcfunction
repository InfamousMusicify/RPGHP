# trigger_unsethp



scoreboard players set @s rpghp.hpch 0
scoreboard players operation @s rpghp.hptrack = @s rpghp.earnt_hp
#scoreboard players operation @s rpghp.hp = @s rpghp.earnt_hp
execute unless score @s rpghp.hptrack = @s rpghp.hp run function rpghp:health_array

tellraw @s ["",{"text":"HP Unset: ","color":"red","clickEvent":{"action":"suggest_command","value":"/trigger rpghp set -4"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set hp.\n(up to your earned maximum HP)","color":"gray"},{"text":"\nAccepts: whole numbers 1+","color":"dark_gray"}]}},{"score":{"name":"@s","objective":"rpghp.earnt_hp"},"color":"gray"},{"text":"","color":"gray"}]


