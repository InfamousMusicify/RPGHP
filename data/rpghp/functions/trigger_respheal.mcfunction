# trigger_respheal

scoreboard players add @s[scores={rpghp.respheal=0..}] rpghp.respheal 2
scoreboard players set @s[scores={rpghp.respheal=3..}] rpghp.respheal 0

tellraw @s ["",{"text":"Respawn Heal: ","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger rpghp set -5"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to Toggle Respawn Healing.\n(if above 20 hp)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0=ON 1=OFF","color":"dark_gray"}]}},{"score":{"name":"@s","objective":"rpghp.respheal"},"color":"gray"},{"text":"","color":"gray"}]
