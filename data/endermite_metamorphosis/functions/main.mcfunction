# add new endermites to the rng shulker transformation check
scoreboard players operation @e[type=minecraft:endermite,tag=!end_meta_random] end_meta_random = @p time
tag @e[type=minecraft:endermite,tag=!end_meta_random] add end_meta_random

scoreboard players operation #nextstep end_meta_random *= #multiply end_meta_random
scoreboard players operation #nextstep end_meta_random += #add end_meta_random
scoreboard players operation #nextstep end_meta_random %= #mod end_meta_random

scoreboard players operation @e[type=minecraft:endermite] end_meta_random += #nextstep end_meta_random
scoreboard players operation @e[type=minecraft:endermite] end_meta_random %= #chance end_meta_random

execute at @e[type=minecraft:endermite,scores={end_meta_random=0}] run execute if block ~ ~-1 ~ #endermite_metamorphosis:endermite_infestable run function endermite_metamorphosis:infest/down
execute at @e[type=minecraft:endermite,scores={end_meta_random=1}] run execute if block ~ ~1 ~ #endermite_metamorphosis:endermite_infestable run function endermite_metamorphosis:infest/up
execute at @e[type=minecraft:endermite,scores={end_meta_random=2}] run execute if block ~ ~ ~-1 #endermite_metamorphosis:endermite_infestable run function endermite_metamorphosis:infest/north
execute at @e[type=minecraft:endermite,scores={end_meta_random=3}] run execute if block ~1 ~ ~ #endermite_metamorphosis:endermite_infestable run function endermite_metamorphosis:infest/east
execute at @e[type=minecraft:endermite,scores={end_meta_random=4}] run execute if block ~ ~ ~1 #endermite_metamorphosis:endermite_infestable run function endermite_metamorphosis:infest/south
execute at @e[type=minecraft:endermite,scores={end_meta_random=5}] run execute if block ~-1 ~ ~ #endermite_metamorphosis:endermite_infestable run function endermite_metamorphosis:infest/west
