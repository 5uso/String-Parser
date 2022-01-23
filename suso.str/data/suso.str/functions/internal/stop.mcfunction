execute unless score $get suso.str matches 1.. run data modify storage suso.str:io out set from storage suso.str:internal result

execute if score $cmdfeed suso.str matches 0 run gamerule sendCommandFeedback false
scoreboard players set $state suso.str -1
data modify block ~ ~ ~ UpdateLastExecution set value 1b

data modify block ~-1 ~ ~1 Command set from storage suso.str:io in.callback
execute if data storage suso.str:io in.callback run data modify block ~-1 ~ ~1 auto set value 1b