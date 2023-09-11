# trigger_hpmod


scoreboard players add @s[scores={rpghp.hpmod=0..}] rpghp.hpmod 2
scoreboard players set @s[scores={rpghp.hpmod=3..}] rpghp.hpmod 0

tellraw @s ["",{"text":"","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger rpghp set -3"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to Toggle HP modification.\n(turn off health but keep gaining exp)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0=ON 1=OFF","color":"dark_gray"}]}},"",{"text":"HP Mod: ","color":"green"},{"score":{"name":"@s","objective":"rpghp.hpmod"},"color":"gray"},{"text":"","color":"gray"}]
