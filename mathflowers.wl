flower = Table[
   Graphics[{Opacity[0.5], White, 
     Riffle[NestList[Scale[Rotate[#, r \[Degree]], 0.944] &, 
       Rectangle[], 20], {White, Black}]}, ImageSize -> 1024], {r, 0, 
    45, 0.25}];
flower2 = 
  Table[Graphics[{Opacity[0.5], White, 
     Riffle[NestList[Scale[Rotate[#, r \[Degree]], 0.944] &, 
       Rectangle[], 20], {White, Black}]}, ImageSize -> 1024], {r, 45,
     0, -0.25}];
flowers = Join[flower, flower2];
Export["fullflowers.avi", flowers]
