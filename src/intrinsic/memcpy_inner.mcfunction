# temp = *src
scoreboard players operation %ptr rust = %param1%0 rust
function intrinsic:setptr
execute at @e[tag=ptr] store result score %temp100 rust run data get block ~ ~ ~ RecordItem.tag.Memory 1

# *dest = temp
scoreboard players operation %ptr rust = %param0%0 rust
function intrinsic:setptr
execute at @e[tag=ptr] store result block ~ ~ ~ RecordItem.tag.Memory int 1 run scoreboard players get %temp100 rust

# ++dest
scoreboard players add %param0%0 rust 4
# ++src
scoreboard players add %param1%0 rust 4
# --len
scoreboard players remove %param2%0 rust 1

# FIXME: This will also break on a longer memcpy
execute if score %param2%0 rust matches 1.. run function intrinsic:memcpy_inner