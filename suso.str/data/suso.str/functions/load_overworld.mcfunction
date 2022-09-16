#00000000-0000-0226-0000-000000000000 Used for names
summon area_effect_cloud ~ ~.5 ~ {Duration:2147483647,UUIDMost:550L,UUIDLeast:0L,UUID:[I;0,550,0,0]}
#00000000-0000-0226-0000-000000000001 Used for tags
summon area_effect_cloud ~ ~.5 ~ {Duration:2147483647,UUIDMost:550L,UUIDLeast:1L,UUID:[I;0,550,0,1],CustomName:'{"text":""}'}

forceload add 29999999 43376
setblock 29999984 0 43376 minecraft:command_block[conditional=false,facing=east]{auto:0b,UpdateLastExecution:1b,Command:"function suso.str:internal/start",TrackOutput:0b}
setblock 29999985 0 43376 minecraft:chain_command_block[conditional=false,facing=east]{auto:1b,UpdateLastExecution:1b,Command:"function suso.str:internal/main",TrackOutput:0b}
setblock 29999985 1 43376 minecraft:oak_sign[rotation=4,waterlogged=false]
setblock 29999986 0 43376 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,UpdateLastExecution:0b,TrackOutput:1b}
setblock 29999986 0 43377 minecraft:chain_command_block[conditional=false,facing=west]{auto:1b,UpdateLastExecution:0b,TrackOutput:0b}
setblock 29999985 0 43377 minecraft:chain_command_block[conditional=false,facing=north]{auto:1b,UpdateLastExecution:0b,Command:"help me",TrackOutput:1b}
setblock 29999984 0 43377 minecraft:command_block[conditional=false,facing=up]{auto:0b,UpdateLastExecution:1b,TrackOutput:1b} destroy
setblock 29999984 1 43376 minecraft:dropper[facing=up]

#Get newline char into storage
loot replace block 29999984 1 43376 container.0 loot suso.str:newline
data modify storage suso.str:internal newline set from block 29999984 1 43376 Items[0].tag.pages[0]
