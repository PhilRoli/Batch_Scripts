@echo off

for /l %%x in (0, 1, 15) do (
    for /l %%y in (0, 1, 15) do (
        echo 0x%%x,%%y
    )
)
