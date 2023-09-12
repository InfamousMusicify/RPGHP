# config



execute if score #max_hp rpghp.config matches 1025.. run scoreboard players set #max_hp rpghp.config 1024
#########################################################################################################
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s ["                           RPGHealth",{"text":" / ","color":"gray"},"Global Settings"]
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
#
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/datapack disable "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to disable a datapack.","color":"gray"},{"text":"","color":"dark_gray"}]}}," Disable "]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/function rpghp:uninstall"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to uninstall rpghealth.","color":"gray"},{"text":"","color":"dark_gray"}]}}," Uninstall "]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set @s rpghp.hpset "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Set a players HP.\nreplace '@s' with 'playername'\n(set to 0 to turn off forced HP)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0=ON 1=OFF","color":"dark_gray"}]}}," Set HP ",{"text":"","color":"gray"},{"score":{"name":"","objective":""},"color":"gray"},{"text":"","color":"gray"}]

tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #exp_checker rpghp.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle exp vs level check.\n(for roleplay and custom games, or OCD)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 1\n0=OFF 1=Full 2=Raw 3=Level_Based\nFull=Complete recalc of all exp/hp each kill\nRaw=Same as full without high/low level checks\nLevel_Based=Calcs only happen for current hp level","color":"dark_gray"}]}}," EXP Checker ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#exp_checker","objective":"rpghp.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #xp_math rpghp.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to edit exp math mode.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 1\n0=OFF 1=Full 2=Raw 3=Level_Based\nFull=Complete recalc of all exp/hp each kill\nRaw=Same as full without high/low level checks\nLevel_Based=Calcs only happen for current hp level","color":"dark_gray"}]}}," XP Math Mode ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#xp_math","objective":"rpghp.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #xpmult rpghp.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set EXP Curve.\n(needed-xp-is-hp-multiplied-by:)","color":"gray"},{"text":"\nAccepts: whole numbers 1+\nDefault: 20","color":"dark_gray"}]}}," EXP Curve ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#xpmult","objective":"rpghp.config"},"color":"gray"},{"text":")","color":"gray"}]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #lowest_hp rpghp.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set Lowest HP.\n(toggle for exp/hp loss.)","color":"gray"},{"text":"\nAccepts: whole numbers 1+\nDefault: 20","color":"dark_gray"}]}}," Lowest HP ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#lowest_hp","objective":"rpghp.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #start_hp rpghp.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set Starting HP.\n(only effects new players)","color":"gray"},{"text":"\nAccepts: whole numbers 1+\nDefault: 20","color":"dark_gray"}]}}," Starting HP ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#start_hp","objective":"rpghp.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #max_hp rpghp.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set Max HP.","color":"gray"},{"text":"\nAccepts: whole numbers 1+\nDefault: 40\nMax: 1024","color":"dark_gray"}]}}," Max HP ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#max_hp","objective":"rpghp.config"},"color":"gray"},{"text":")","color":"gray"}]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #respawn_heal rpghp.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle respawn healing.\n(heal if above 20 hp)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0=ON 1=OFF","color":"dark_gray"}]}}," Respawn Healing ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#respawn_heal","objective":"rpghp.config"},"color":"gray"},{"text":")","color":"gray"}]

tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/function rpghp:config_mobs"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to setup mob exp values.","color":"gray"},{"text":"","color":"dark_gray"}]}}," Mob EXP "]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #death rpghp.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set Death EXP amount.","color":"gray"},{"text":"\nAccepts: whole numbers 0+-\nDefault: -20","color":"dark_gray"}]}}," Death ",{"text":"(xp: ","color":"gray"},{"score":{"name":"#death","objective":"rpghp.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #player rpghp.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set Player EXP amount.","color":"gray"},{"text":"\nAccepts: whole numbers 0+-\nDefault: 0","color":"dark_gray"}]}}," Player ",{"text":"(xp: ","color":"gray"},{"score":{"name":"#player","objective":"rpghp.config"},"color":"gray"},{"text":")","color":"gray"}]

tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
##### ##### ##### 
execute store result score #sendCommandFeedback rpghp.config run gamerule sendCommandFeedback
execute if score #sendCommandFeedback rpghp.config matches 1 run function rpghp:hide_command_feedback
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 

