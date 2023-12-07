


tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s ["                     RPGHealth",{"text":" / ","color":"gray"},"Presets                         "]
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/function rpghp:preset/1"},"hoverEvent":{"action":"show_text","contents":["",{"text":"1, Default preset. -default","color":"gray"},{"text":"","color":"dark_gray"}]}}," Deafault ",{"text":" 1","color":"gray"},{"score":{"name":"#","objective":""},"color":"gray"},{"text":"","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/function rpghp:preset/2"},"hoverEvent":{"action":"show_text","contents":["",{"text":"1, InHaus preset. -inhaus","color":"gray"},{"text":"","color":"dark_gray"}]}}," InHaus ",{"text":" 2","color":"gray"},{"score":{"name":"#","objective":""},"color":"gray"},{"text":"","color":"gray"}]


tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}

execute store result score #sendCommandFeedback rpghp.config run gamerule sendCommandFeedback
execute if score #sendCommandFeedback rpghp.config matches 1 run function rpghp:hide_command_feedback