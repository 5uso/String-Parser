execute store success score $late suso.str run data modify storage suso.str:internal time set from block ~ ~ ~1 LastOutput
execute unless score $state suso.str matches ..1 if score $late suso.str matches 1 run function suso.str:internal/time/fix
