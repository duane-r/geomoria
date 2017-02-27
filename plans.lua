-- Geomoria plans.lua
-- Copyright Duane Robertson (duane@duanerobertson.com), 2017
-- Distributed under the LGPLv2.1 (https://www.gnu.org/licenses/old-licenses/lgpl-2.1.en.html)


-- Rotation:
-- 0 Z+   1 X+   2 Z-   3 X-
-- ladders:  2 X+   3 X-   4 Z+   5 Z-


local p = {
  {act = 'fill', node = 'default:stone_block', coords = {0, 79, 20, 40, 0, 79}},
  {act = 'fill', node = 'air', coords = {1, 78, 21, 38, 1, 78}},
}

for _, item in pairs(geomoria_mod.default_exits) do
  table.insert(p, 2, table.copy(item))
  --local i = table.copy(item)
  --if i.coords[1] == 0 or i.coords[1] == 79 then
  --  i.node = 'default:meselamp'
  --  i.coords[5] = i.coords[5] - 1
  --  i.coords[6] = 1
  --  i.coords[3] = i.coords[3] + 1
  --  i.coords[4] = 1
  --  table.insert(p, i)
  --  i = table.copy(item)
  --  i.node = 'default:meselamp'
  --  i.coords[5] = i.coords[5] + 2
  --  i.coords[6] = 1
  --  i.coords[3] = i.coords[3] + 1
  --  i.coords[4] = 1
  --  table.insert(p, i)
  --elseif i.coords[5] == 0 or i.coords[5] == 79 then
  --  i.node = 'default:meselamp'
  --  i.coords[1] = i.coords[1] - 1
  --  i.coords[2] = 1
  --  i.coords[3] = i.coords[3] + 1
  --  i.coords[4] = 1
  --  table.insert(p, i)
  --  i = table.copy(item)
  --  i.node = 'default:meselamp'
  --  i.coords[1] = i.coords[1] + 2
  --  i.coords[2] = 1
  --  i.coords[3] = i.coords[3] + 1
  --  i.coords[4] = 1
  --  table.insert(p, i)
  --end
end

for z = 7, 78, 9 do
  for x = 7, 78, 9 do
    local i = {act = 'fill', node = 'default:stone_block', coords = {z, 2, 21, 38, x, 2}}
    table.insert(p, i)
    --for y = 25, 57, 9 do
    --  i = {act = 'fill', node = 'default:meselamp', coords = {z, 2, y, 1, x, 2}}
    --  table.insert(p, i)
    --end
  end
end

geomoria_mod.plans['pillared room'] = table.copy(p)


p = {
  {act = 'fill', node = 'air', coords = {20, 51, 12, 36, 11, 50}},
  {act = 'fill', node = 'default:water_source', coords = {20, 51, 11, 10, 11, 50}},
  {act = 'fill', node = 'default:stone', coords = {38, 17, 11, 10, 30, 16}},
  {act = 'fill', node = 'default:stone', coords = {39, 2, 11, 10, 11, 19}},
  {act = 'fill', node = 'default:water_source', coords = {49, 30, 11, 5, 62, 17}},
  {act = 'fill', node = 'default:water_source', coords = {17, 32, 11, 2, 69, 2}},
  {act = 'fill', node = 'default:water_source', coords = {43, 2, 11, 2, 61, 10}},
  {act = 'fill', node = 'default:water_source', coords = {17, 2, 11, 2, 23, 46}},
  {act = 'fill', node = 'default:water_source', coords = {1, 18, 11, 5, 1, 22}},
  {act = 'fill', node = 'air', coords = {56, 8, 21, 5, 1, 5}},
  {act = 'fill', node = 'air', coords = {16, 8, 21, 5, 1, 5}},
  {act = 'fill', node = 'air', coords = {39, 2, 21, 3, 0, 11}},
  {act = 'fill', node = 'air', coords = {1, 15, 21, 6, 42, 16}},
  {act = 'fill', node = 'air', coords = {9, 7, 21, 6, 22, 19}},
  {act = 'fill', node = 'air', coords = {1, 4, 21, 4, 31, 7}},
  {act = 'fill', node = 'air', coords = {1, 4, 21, 4, 22, 8}},
  {act = 'fill', node = 'air', coords = {0, 9, 21, 3, 39, 2}},
  {act = 'fill', node = 'air', coords = {6, 10, 21, 3, 10, 2}},
  {act = 'fill', node = 'air', coords = {0, 16, 21, 3, 10, 2}},
  {act = 'fill', node = 'air', coords = {72, 7, 21, 4, 47, 11}},
  {act = 'fill', node = 'air', coords = {71, 8, 21, 6, 34, 12}},
  {act = 'fill', node = 'air', coords = {72, 7, 21, 5, 1, 32}},
  {act = 'fill', node = 'air', coords = {71, 9, 21, 2, 19, 2}},
  {act = 'fill', node = 'air', coords = {49, 30, 21, 6, 62, 17}},
  {act = 'fill', node = 'air', coords = {1, 30, 21, 6, 62, 17}},
  {act = 'fill', node = 'air', coords = {37, 6, 21, 4, 75, 4}},
  {act = 'fill', node = 'air', coords = {0, 20, 21, 3, 59, 2}},
  {act = 'fill', node = 'air', coords = {71, 9, 21, 3, 59, 2}},
  {act = 'fill', node = 'air', coords = {6, 2, 21, 3, 10, 32}},
  {act = 'fill', node = 'air', coords = {0, 16, 21, 3, 19, 2}},
  {act = 'fill', node = 'air', coords = {5, 1, 21, 2, 34, 2}},
  {act = 'fill', node = 'air', coords = {5, 1, 21, 2, 26, 2}},
  {act = 'fill', node = 'air', coords = {1, 14, 21, 3, 1, 9}},
  {act = 'fill', node = 'air', coords = {1, 4, 21, 3, 10, 8}},
  {act = 'fill', node = 'air', coords = {9, 7, 21, 3, 7, 11}},
  {act = 'fill', node = 'air', coords = {16, 44, 21, 3, 7, 2}},
  {act = 'fill', node = 'air', coords = {19, 2, 21, 3, 5, 2}},
  {act = 'fill', node = 'air', coords = {58, 2, 21, 3, 5, 2}},
  {act = 'fill', node = 'air', coords = {21, 28, 21, 3, 73, 2}},
  {act = 'fill', node = 'air', coords = {16, 2, 21, 3, 56, 6}},
  {act = 'ladder', node = 'default:ladder_steel', param2 = 5, coords = {78, 1, 11, 10, 62, 1}},
}

for _, item in pairs(geomoria_mod.default_exits) do
  table.insert(p, 2, table.copy(item))
end

geomoria_mod.plans['reservoir'] = table.copy(p)


p = {
  {act = 'fill', node = 'air', coords = {1, 2, 21, 3, 21, 40}},
  {act = 'fill', node = 'air', coords = {0, 7, 21, 3, 19, 2}},
  {act = 'fill', node = 'air', coords = {5, 70, 21, 3, 17, 2}},
  {act = 'fill', node = 'air', coords = {73, 7, 21, 3, 19, 2}},
  {act = 'fill', node = 'air', coords = {19, 42, 21, 6, 1, 14}},
  {act = 'fill', node = 'air', coords = {73, 5, 21, 3, 46, 11}},
  {act = 'fill', node = 'air', coords = {73, 5, 21, 3, 23, 11}},
  {act = 'fill', node = 'air', coords = {75, 5, 21, 3, 39, 2}},
  {act = 'fill', node = 'air', coords = {71, 9, 21, 3, 59, 2}},
  {act = 'fill', node = 'air', coords = {69, 2, 21, 3, 23, 38}},
  {act = 'fill', node = 'air', coords = {21, 50, 21, 3, 21, 2}},
  {act = 'fill', node = 'air', coords = {19, 2, 21, 3, 21, 59}},
  {act = 'fill', node = 'air', coords = {39, 22, 21, 3, 77, 2}},
  {act = 'fill', node = 'air', coords = {44, 2, 21, 3, 75, 2}},
  {act = 'fill', node = 'air', coords = {30, 30, 21, 8, 25, 50}},
  {act = 'fill', node = 'air', coords = {24, 5, 21, 3, 64, 12}},
  {act = 'fill', node = 'air', coords = {24, 5, 21, 3, 51, 12}},
  {act = 'fill', node = 'air', coords = {24, 5, 21, 3, 38, 12}},
  {act = 'fill', node = 'air', coords = {24, 5, 21, 3, 25, 12}},
  {act = 'fill', node = 'air', coords = {61, 14, 21, 3, 64, 11}},
  {act = 'fill', node = 'air', coords = {61, 5, 21, 3, 51, 12}},
  {act = 'fill', node = 'air', coords = {61, 5, 21, 3, 38, 12}},
  {act = 'fill', node = 'air', coords = {61, 5, 21, 3, 25, 12}},
  {act = 'fill', node = 'air', coords = {29, 1, 21, 3, 68, 2}},
  {act = 'fill', node = 'air', coords = {29, 1, 21, 3, 56, 2}},
  {act = 'fill', node = 'air', coords = {29, 1, 21, 3, 43, 2}},
  {act = 'fill', node = 'air', coords = {29, 1, 21, 3, 30, 2}},
  {act = 'fill', node = 'air', coords = {60, 1, 21, 3, 68, 2}},
  {act = 'fill', node = 'air', coords = {60, 1, 21, 3, 56, 2}},
  {act = 'fill', node = 'air', coords = {60, 1, 21, 3, 43, 2}},
  {act = 'fill', node = 'air', coords = {60, 1, 21, 3, 30, 2}},
  {act = 'fill', node = 'air', coords = {73, 2, 21, 3, 34, 12}},
  {act = 'fill', node = 'air', coords = {3, 16, 21, 3, 59, 2}},
  {act = 'fill', node = 'air', coords = {11, 25, 31, 4, 14, 10}},
  {act = 'stair', node = 'stairs:stair_stone', param2 = 3, coords = {33, 10, 21, 10, 14, 1}},
  {act = 'fill', node = 'air', coords = {61, 13, 31, 4, 56, 19}},
  {act = 'ladder', node = 'default:ladder_steel', param2 = 4, coords = {63, 1, 21, 10, 74, 1}},
  {act = 'stair', node = 'stairs:stair_stone', param2 = 0, coords = {73, 1, 21, 10, 49, 10}},
  {act = 'stair', node = 'stairs:stair_stone', param2 = 1, coords = {6, 10, 21, 10, 58, 1}},
  {act = 'fill', node = 'air', coords = {16, 2, 31, 4, 24, 35}},
  {act = 'fill', node = 'air', coords = {61, 2, 31, 4, 22, 34}},
  {act = 'fill', node = 'air', coords = {36, 25, 31, 4, 22, 2}},
  {act = 'fill', node = 'air', coords = {3, 3, 21, 3, 58, 1}},
  {act = 'fill', node = 'geomoria:false_wall', coords = {61, 2, 31, 4, 55, 1}},
  {act = 'fill', node = 'geomoria:false_wall', coords = {36, 1, 31, 4, 22, 2}},
}

for _, item in pairs(geomoria_mod.default_exits) do
  table.insert(p, 2, table.copy(item))
end

geomoria_mod.plans['market'] = table.copy(p)


p = {
  {act = 'fill', node = 'air', coords = {19, 2, 21, 3, 76, 4}},
  {act = 'fill', node = 'air', coords = {5, 16, 21, 3, 74, 2}},
  {act = 'fill', node = 'air', coords = {3, 2, 21, 3, 70, 6}},
  {act = 'fill', node = 'air', coords = {5, 20, 21, 3, 70, 2}},
  {act = 'fill', node = 'air', coords = {23, 2, 21, 3, 72, 6}},
  {act = 'fill', node = 'air', coords = {25, 5, 21, 3, 76, 2}},
  {act = 'fill', node = 'air', coords = {28, 2, 21, 3, 60, 16}},
  {act = 'fill', node = 'air', coords = {28, 27, 21, 3, 58, 2}},
  {act = 'fill', node = 'air', coords = {53, 2, 21, 3, 41, 17}},
  {act = 'fill', node = 'air', coords = {50, 5, 21, 3, 39, 2}},
  {act = 'fill', node = 'air', coords = {39, 2, 21, 3, 73, 6}},
  {act = 'fill', node = 'air', coords = {32, 20, 21, 3, 71, 2}},
  {act = 'fill', node = 'air', coords = {52, 16, 21, 15, 63, 16}},
  {act = 'fill', node = 'air', coords = {75, 5, 21, 3, 59, 2}},
  {act = 'fill', node = 'air', coords = {1, 2, 21, 3, 52, 15}},
  {act = 'fill', node = 'air', coords = {3, 8, 21, 3, 52, 2}},
  {act = 'fill', node = 'air', coords = {9, 2, 21, 3, 54, 9}},
  {act = 'fill', node = 'air', coords = {11, 14, 21, 3, 61, 2}},
  {act = 'fill', node = 'air', coords = {23, 2, 21, 3, 59, 2}},
  {act = 'fill', node = 'air', coords = {13, 12, 21, 3, 57, 2}},
  {act = 'fill', node = 'air', coords = {13, 2, 21, 3, 55, 2}},
  {act = 'fill', node = 'air', coords = {13, 37, 21, 3, 53, 2}},
  {act = 'fill', node = 'air', coords = {48, 2, 21, 3, 50, 3}},
  {act = 'fill', node = 'air', coords = {0, 5, 21, 3, 39, 2}},
  {act = 'fill', node = 'air', coords = {3, 2, 21, 3, 41, 9}},
  {act = 'fill', node = 'air', coords = {5, 25, 21, 3, 48, 2}},
  {act = 'fill', node = 'air', coords = {4, 4, 21, 3, 25, 2}},
  {act = 'fill', node = 'air', coords = {8, 2, 21, 3, 25, 19}},
  {act = 'fill', node = 'air', coords = {8, 13, 21, 3, 44, 2}},
  {act = 'fill', node = 'air', coords = {19, 2, 21, 3, 23, 21}},
  {act = 'fill', node = 'air', coords = {21, 9, 21, 3, 39, 2}},
  {act = 'fill', node = 'air', floor = 'default:stone_block', coords = {1, 78, 21, 15, 17, 6}},
  {act = 'fill', node = 'air', coords = {19, 2, 21, 3, 0, 5}},
  {act = 'fill', node = 'air', coords = {2, 17, 21, 3, 3, 2}},
  {act = 'fill', node = 'air', coords = {2, 2, 21, 3, 5, 10}},
  {act = 'fill', node = 'air', coords = {4, 33, 21, 3, 13, 2}},
  {act = 'fill', node = 'air', coords = {6, 6, 21, 3, 9, 2}},
  {act = 'fill', node = 'air', coords = {6, 2, 21, 3, 11, 2}},
  {act = 'fill', node = 'air', coords = {35, 2, 21, 3, 11, 2}},
  {act = 'fill', node = 'air', coords = {35, 15, 21, 3, 9, 2}},
  {act = 'fill', node = 'air', coords = {39, 2, 21, 3, 0, 17}},
  {act = 'fill', node = 'air', coords = {59, 2, 21, 3, 23, 13}},
  {act = 'fill', node = 'air', coords = {59, 2, 21, 3, 0, 17}},
  {act = 'fill', node = 'air', coords = {59, 20, 21, 3, 36, 8}},
  {act = 'fill', node = 'air', floor = 'default:stone_block', coords = {30, 20, 21, 15, 30, 20}},

  {act = 'fill', node = 'air', coords = {13, 2, 31, 3, 55, 22}},
  {act = 'fill', node = 'air', coords = {15, 2, 31, 3, 75, 2}},
  {act = 'fill', node = 'air', coords = {17, 2, 31, 3, 45, 32}},
  {act = 'fill', node = 'air', coords = {4, 11, 31, 3, 53, 2}},
  {act = 'fill', node = 'air', coords = {4, 2, 31, 3, 25, 28}},
  {act = 'fill', node = 'air', coords = {8, 11, 31, 3, 35, 10}},
  {act = 'fill', node = 'air', coords = {8, 11, 31, 3, 24, 10}},
  {act = 'fill', node = 'air', coords = {20, 2, 31, 3, 11, 6}},
  {act = 'fill', node = 'air', coords = {20, 2, 31, 3, 23, 18}},
  {act = 'fill', node = 'air', coords = {22, 8, 31, 3, 39, 2}},
  {act = 'fill', node = 'air', coords = {32, 2, 31, 3, 52, 9}},
  {act = 'fill', node = 'air', coords = {34, 7, 31, 3, 52, 2}},
  {act = 'fill', node = 'air', coords = {39, 2, 31, 3, 50, 2}},
  {act = 'fill', node = 'air', coords = {39, 2, 31, 3, 23, 7}},
  {act = 'fill', node = 'air', coords = {39, 2, 31, 3, 5, 12}},
  {act = 'fill', node = 'air', coords = {41, 24, 31, 3, 5, 2}},
  {act = 'fill', node = 'air', coords = {58, 2, 31, 3, 11, 6}},
  {act = 'fill', node = 'air', coords = {58, 2, 31, 3, 23, 40}},
  {act = 'fill', node = 'air', coords = {50, 8, 31, 3, 39, 2}},
  {act = 'fill', node = 'air', coords = {63, 2, 31, 3, 58, 3}},
  {act = 'stair', node = 'stairs:stair_stone', param2 = 1, coords = {3, 10, 21, 10, 65, 2}},
  {act = 'stair', node = 'stairs:stair_stone', param2 = 1, coords = {12, 10, 21, 10, 9, 2}},
  {act = 'stair', node = 'stairs:stair_stone', param2 = 1, coords = {50, 10, 21, 10, 9, 2}},
  {act = 'stair', node = 'stairs:stair_stone', param2 = 3, coords = {65, 10, 21, 10, 59, 2}},
  {act = 'stair', node = 'stairs:stair_stone', param2 = 2, coords = {32, 2, 21, 10, 61, 10}},
  {act = 'ladder', node = 'default:ladder_steel', param2 = 3, coords = {4, 1, 21, 10, 25, 1}},
  {act = 'fill', node = 'air', coords = {59, 1, 21, 3, 9, 2}},

  {act = 'fill', node = 'air', coords = {63, 2, 41, 3, 17, 31}},
  {act = 'stair', node = 'stairs:stair_stone', param2 = 2, coords = {63, 2, 31, 10, 48, 10}},
  {act = 'stair', node = 'stairs:stair_stone', param2 = 0, coords = {63, 2, 31, 10, 7, 10}},

  {act = 'fill', node = 'default:stone', coords = {20, 2, 30, 1, 17, 6}},
  {act = 'fill', node = 'default:stone', coords = {39, 2, 30, 1, 17, 6}},
  {act = 'fill', node = 'default:stone', coords = {58, 2, 30, 1, 17, 6}},
  {act = 'fill', node = 'default:stone', coords = {56, 6, 30, 1, 63, 3}},
  {act = 'fill', node = 'default:stone', coords = {39, 2, 30, 1, 30, 20}},
  {act = 'fill', node = 'default:stone', coords = {30, 20, 30, 1, 39, 2}},

  {act = 'fill', node = 'geomoria:false_wall', coords = {1, 2, 21, 3, 58, 1}},
  {act = 'fill', node = 'geomoria:false_wall', coords = {21, 1, 21, 3, 39, 2}},
  {act = 'fill', node = 'geomoria:false_wall', coords = {6, 2, 21, 3, 12, 1}},
  {act = 'fill', node = 'geomoria:false_wall', coords = {38, 1, 21, 3, 9, 2}},
  {act = 'fill', node = 'geomoria:false_wall', coords = {41, 1, 21, 3, 9, 2}},
  {act = 'fill', node = 'geomoria:false_wall', coords = {59, 2, 21, 3, 23, 1}},
  {act = 'fill', node = 'geomoria:false_wall', coords = {13, 2, 31, 3, 67, 1}},
  {act = 'fill', node = 'geomoria:false_wall', coords = {13, 2, 31, 3, 34, 1}},
}

for _, item in pairs(geomoria_mod.default_exits) do
  table.insert(p, 2, table.copy(item))
end

geomoria_mod.plans['silly straw'] = table.copy(p)
