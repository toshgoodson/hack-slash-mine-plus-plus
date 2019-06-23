function hsmpp:potions/tag

function hsmpp:potions/explosion/mark

execute at @e[tag=hsmpp_potion] run tp @e[tag=hsmpp_potion_marker,tag=!hsmpp_potion_marker_landed,sort=nearest,limit=1] ~ ~ ~
execute as @e[tag=hsmpp_potion_marker] at @s unless entity @e[tag=hsmpp_potion,distance=..1] run tag @s add hsmpp_potion_marker_landed

function hsmpp:potions/explosion/proc

kill @e[tag=hsmpp_potion_marker_landed]
