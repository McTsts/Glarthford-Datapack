# adventurer tent edge case
execute if block 18 26 -267 chest{Items:[]} run setblock 18 27 -267 barrier

# replace chests
fill ~-5 ~-5 ~-5 ~-7 ~5 ~5 jungle_button[powered=true,face=ceiling,facing=south] replace chest[type=single,facing=north]{Items:[]}
fill ~-5 ~-5 ~-5 ~-7 ~5 ~5 jungle_button[powered=true,face=ceiling,facing=west] replace chest[type=single,facing=east]{Items:[]}
fill ~-5 ~-5 ~-5 ~-7 ~5 ~5 jungle_button[powered=true,face=ceiling,facing=north] replace chest[type=single,facing=south]{Items:[]}
fill ~-5 ~-5 ~-5 ~-7 ~5 ~5 jungle_button[powered=true,face=ceiling,facing=east] replace chest[type=single,facing=west]{Items:[]}

fill ~5 ~-5 ~-5 ~7 ~5 ~5 jungle_button[powered=true,face=ceiling,facing=south] replace chest[type=single,facing=north]{Items:[]}
fill ~5 ~-5 ~-5 ~7 ~5 ~5 jungle_button[powered=true,face=ceiling,facing=west] replace chest[type=single,facing=east]{Items:[]}
fill ~5 ~-5 ~-5 ~7 ~5 ~5 jungle_button[powered=true,face=ceiling,facing=north] replace chest[type=single,facing=south]{Items:[]}
fill ~5 ~-5 ~-5 ~7 ~5 ~5 jungle_button[powered=true,face=ceiling,facing=east] replace chest[type=single,facing=west]{Items:[]}

fill ~-5 ~-5 ~-5 ~5 ~5 ~-7 jungle_button[powered=true,face=ceiling,facing=south] replace chest[type=single,facing=north]{Items:[]}
fill ~-5 ~-5 ~-5 ~5 ~5 ~-7 jungle_button[powered=true,face=ceiling,facing=west] replace chest[type=single,facing=east]{Items:[]}
fill ~-5 ~-5 ~-5 ~5 ~5 ~-7 jungle_button[powered=true,face=ceiling,facing=north] replace chest[type=single,facing=south]{Items:[]}
fill ~-5 ~-5 ~-5 ~5 ~5 ~-7 jungle_button[powered=true,face=ceiling,facing=east] replace chest[type=single,facing=west]{Items:[]}

fill ~-5 ~-5 ~5 ~5 ~5 ~7 jungle_button[powered=true,face=ceiling,facing=south] replace chest[type=single,facing=north]{Items:[]}
fill ~-5 ~-5 ~5 ~5 ~5 ~7 jungle_button[powered=true,face=ceiling,facing=west] replace chest[type=single,facing=east]{Items:[]}
fill ~-5 ~-5 ~5 ~5 ~5 ~7 jungle_button[powered=true,face=ceiling,facing=north] replace chest[type=single,facing=south]{Items:[]}
fill ~-5 ~-5 ~5 ~5 ~5 ~7 jungle_button[powered=true,face=ceiling,facing=east] replace chest[type=single,facing=west]{Items:[]}
