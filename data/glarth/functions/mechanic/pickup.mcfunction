execute @e[tag=diamond] ~ ~ ~ give @a[x=-6,y=26,z=-149,dy=0,m=2] diamond 
execute @a[x=-6,y=26,z=-149,dy=0,m=2] ~ ~ ~ kill @e[tag=diamond]
execute @a[x=-6,y=26,z=-149,dy=0,m=2] ~ ~ ~ kill @e[tag=pickup_name,c=1,r=1]
execute @e[tag=paper1] ~ ~ ~ give @a[x=10,y=27,z=-181,dy=0,m=2] paper 1 0 {display:{LocName:"item.letter"}}
execute @a[x=10,y=27,z=-181,dy=0,m=2] ~ ~ ~ kill @e[tag=paper1]
execute @a[x=10,y=27,z=-181,dy=0,m=2] ~ ~ ~ kill @e[tag=pickup_name,c=1,r=1]
execute @e[tag=paper2] ~ ~ ~ give @a[x=4,y=27,z=-180,dy=0,m=2] paper 1 0 {display:{LocName:"item.letter"}}
execute @a[x=4,y=27,z=-180,dy=0,m=2] ~ ~ ~ kill @e[tag=paper2]
execute @a[x=4,y=27,z=-180,dy=0,m=2] ~ ~ ~ kill @e[tag=pickup_name,c=1,r=1]
execute @e[tag=flint] ~ ~ ~ give @a[x=73,y=25,z=-269,dy=0,m=2] flint
execute @a[x=73,y=25,z=-269,dy=0,m=2] ~ ~ ~ kill @e[tag=flint]
execute @a[x=73,y=25,z=-269,dy=0,m=2] ~ ~ ~ kill @e[tag=pickup_name,c=1,r=1]
execute @e[tag=coal] ~ ~ ~ give @a[x=71,y=24,z=-275,dy=0,m=2] coal
execute @a[x=71,y=24,z=-275,dy=0,m=2] ~ ~ ~ kill @e[tag=coal]
execute @a[x=71,y=24,z=-275,dy=0,m=2] ~ ~ ~ kill @e[tag=pickup_name,c=1,r=1]