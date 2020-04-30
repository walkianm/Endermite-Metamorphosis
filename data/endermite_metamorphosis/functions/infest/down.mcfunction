# Endermite attempts to infest the block below it
setblock ~ ~-1 ~ air
tp @e[type=minecraft:endermite,limit=1,distance=...1] ~ -50 ~
execute align xyz run summon shulker ~0.5 ~-1 ~0.5 {Color:16}
