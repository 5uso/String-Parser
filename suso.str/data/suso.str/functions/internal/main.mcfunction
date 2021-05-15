#tellraw @a "CYCLE"

scoreboard players set $done suso.str 0
function suso.str:internal/time/check

execute if score $state suso.str matches 7 run function suso.str:internal/states/7
execute if score $state suso.str matches 6 run function suso.str:internal/states/6
execute if score $state suso.str matches 5 run function suso.str:internal/states/5
execute if score $state suso.str matches 4 run function suso.str:internal/states/4
execute if score $state suso.str matches 3 if score $done suso.str matches 0 run function suso.str:internal/states/3
execute if score $state suso.str matches 2 run function suso.str:internal/states/2
execute if score $state suso.str matches 1 run function suso.str:internal/states/1
execute if score $state suso.str matches 0 run function suso.str:internal/states/0

execute if score $state suso.str matches -1 run data modify block ~ ~ ~ UpdateLastExecution set value 1b
scoreboard players add $counter suso.str 1
execute if score $counter suso.str matches 5000.. run data modify block ~ ~ ~ UpdateLastExecution set value 1b