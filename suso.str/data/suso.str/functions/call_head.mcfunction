data modify block 29999984 1 43376 Items set value [{Slot:0b,id:"minecraft:player_head",Count:1b}]
data modify block 29999984 1 43376 Items[0].tag.SkullOwner set from storage suso.str:io in.name
execute unless data storage suso.str:io in.name run loot replace block 29999984 1 43376 container.0 loot suso.str:playerhead

function suso.str:internal/head_wait/check