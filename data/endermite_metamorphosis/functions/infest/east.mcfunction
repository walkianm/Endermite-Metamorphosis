# Endermite attempts to infest the block to the east of it
setblock ~1 ~ ~ air
tp @e[type=minecraft:endermite,limit=1,distance=...1] ~ -50 ~
execute align xyz run summon shulker ~1.5 ~ ~0.5 {Color:16}
