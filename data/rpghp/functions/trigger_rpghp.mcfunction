# trigger_rpghp



scoreboard players add @s[scores={rpghp.rpghp=0..}] rpghp.rpghp 2
scoreboard players set @s[scores={rpghp.rpghp=3..}] rpghp.rpghp 0

tellraw @s ["",{"text":"","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger rpghp set -2"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to Toggle RPGHealth.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0=ON 1=OFF","color":"dark_gray"}]}},"",{"text":"RPGHealth: ","color":"green"},{"score":{"name":"@s","objective":"rpghp.rpghp"},"color":"gray"},{"text":"","color":"gray"}]
