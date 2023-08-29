# config

tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s ["                           RPGHealth",{"text":" / ","color":"gray"},"Global Settings"]
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
#
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/datapack disable "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to disable a datapack.","color":"gray"},{"text":"","color":"dark_gray"}]}}," Disable "]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/function rpghp:uninstall"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to uninstall rpghealth.","color":"gray"},{"text":"","color":"dark_gray"}]}}," Uninstall "]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set @s rpghp.hpset "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Set a players HP.\nreplace '@s' with 'playername'","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0=ON 1=OFF","color":"dark_gray"}]}}," Set HP ",{"text":"","color":"gray"},{"score":{"name":"","objective":""},"color":"gray"},{"text":"","color":"gray"}]

tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #start_hp rpghp.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set Starting HP.\n(only effects new players.)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 20","color":"dark_gray"}]}}," Starting HP ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#start_hp","objective":"rpghp.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #max_hp rpghp.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set Max HP.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 40\nMax: 1024","color":"dark_gray"}]}}," Max HP ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#max_hp","objective":"rpghp.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #xpmult rpghp.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set EXP Curve.\n(needed-xp-is-hp-multiplied-by.)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 20","color":"dark_gray"}]}}," EXP Curve ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#xpmult","objective":"rpghp.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #login_heal rpghp.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle login healing.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0=ON 1=OFF","color":"dark_gray"}]}}," Login Healing ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#login_heal","objective":"rpghp.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #respawn_heal rpghp.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle respawn healing.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0=ON 1=OFF","color":"dark_gray"}]}}," Respawn Healing ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#respawn_heal","objective":"rpghp.config"},"color":"gray"},{"text":")","color":"gray"}]

tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #death rpghp.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set Death EXP amount.","color":"gray"},{"text":"\nAccepts: whole numbers 0+-\nDefault: 0","color":"dark_gray"}]}}," Death ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#death","objective":"rpghp.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #player rpghp.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set player EXP amount.","color":"gray"},{"text":"\nAccepts: whole numbers 0+-\nDefault: 2","color":"dark_gray"}]}}," Player ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#player","objective":"rpghp.config"},"color":"gray"},{"text":")","color":"gray"}]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/function rpghp:config_mobs"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to setup mob exp values.","color":"gray"},{"text":"","color":"dark_gray"}]}}," Mob EXP "]


tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
##### ##### ##### 
execute store result score #sendCommandFeedback rpghp.config run gamerule sendCommandFeedback
execute if score #sendCommandFeedback rpghp.config matches 1 run function rpghp:hide_command_feedback
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 

