-- Geomoria plans.lua
-- Copyright Duane Robertson (duane@duanerobertson.com), 2017
-- Distributed under the LGPLv2.1 (https://www.gnu.org/licenses/old-licenses/lgpl-2.1.en.html)


-- Rotation:
-- 0 Z+   1 X+   2 Z-   3 X-
-- ladders:  2 X+   3 X-   4 Z+   5 Z-


local p = {
  {act = 'fill', node = 'air', line = 'default:stone_block', treasure = 1, coords = {1, 78, 21, 38, 1, 78}},
}

for _, item in pairs(geomoria_mod.default_exits) do
  table.insert(p, 2, table.copy(item))
end

for z = 7, 78, 9 do
  for x = 7, 78, 9 do
    local i = {act = 'fill', node = 'default:stone_block', coords = {z, 2, 21, 38, x, 2}}
    table.insert(p, i)
    if geomoria_mod.cheap_lighting then
      for y = 25, 57, 9 do
        i = {act = 'fill', node = 'default:meselamp', coords = {z, 2, y, 1, x, 2}}
        table.insert(p, i)
      end
    end
  end
end

geomoria_mod.plans['pillared room'] = table.copy(p)


p = {
  {act = 'fill', node = 'air', coords = {20, 51, 12, 36, 11, 50}},
  {act = 'fill', node = 'default:water_source', treasure = 5, coords = {20, 51, 11, 10, 11, 50}},
  {act = 'fill', node = 'default:stone', coords = {38, 17, 11, 10, 30, 16}},
  {act = 'fill', node = 'default:stone', coords = {39, 2, 11, 10, 11, 19}},
  {act = 'fill', node = 'default:water_source', treasure = 3, coords = {49, 30, 11, 5, 62, 17}},
  {act = 'fill', node = 'default:water_source', coords = {17, 32, 11, 2, 69, 2}},
  {act = 'fill', node = 'default:water_source', coords = {43, 2, 11, 2, 61, 10}},
  {act = 'fill', node = 'default:water_source', coords = {17, 2, 11, 2, 23, 46}},
  {act = 'fill', node = 'default:water_source', treasure = 1, coords = {1, 18, 11, 5, 1, 22}},
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
  {act = 'fill', node = 'air', treasure = 8, coords = {24, 5, 21, 3, 64, 12}},
  {act = 'fill', node = 'air', treasure = 8, coords = {24, 5, 21, 3, 51, 12}},
  {act = 'fill', node = 'air', treasure = 8, coords = {24, 5, 21, 3, 38, 12}},
  {act = 'fill', node = 'air', treasure = 8, coords = {24, 5, 21, 3, 25, 12}},
  {act = 'fill', node = 'air', treasure = 8, coords = {61, 14, 21, 3, 64, 11}},
  {act = 'fill', node = 'air', treasure = 8, coords = {61, 5, 21, 3, 51, 12}},
  {act = 'fill', node = 'air', treasure = 8, coords = {61, 5, 21, 3, 38, 12}},
  {act = 'fill', node = 'air', treasure = 8, coords = {61, 5, 21, 3, 25, 12}},
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
  {act = 'fill', node = 'air', treasure = 1, coords = {61, 2, 31, 4, 22, 34}},
  {act = 'fill', node = 'air', treasure = 3, coords = {36, 25, 31, 4, 22, 2}},
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
  {act = 'fill', node = 'air', treasure = 3, coords = {59, 20, 21, 3, 36, 8}},
  {act = 'fill', node = 'air', treasure = 3, floor = 'default:stone_block', coords = {30, 20, 21, 15, 30, 20}},

  {act = 'fill', node = 'air', coords = {13, 2, 31, 3, 55, 22}},
  {act = 'fill', node = 'air', coords = {15, 2, 31, 3, 75, 2}},
  {act = 'fill', node = 'air', coords = {17, 2, 31, 3, 45, 32}},
  {act = 'fill', node = 'air', coords = {4, 11, 31, 3, 53, 2}},
  {act = 'fill', node = 'air', coords = {4, 2, 31, 3, 25, 28}},
  {act = 'fill', node = 'air', treasure = 1, coords = {8, 11, 31, 3, 35, 10}},
  {act = 'fill', node = 'air', treasure = 1, coords = {8, 11, 31, 3, 24, 10}},
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


p = {
  {act = 'fill', node = 'air', floor = 'default:stone_block', coords = {1, 78, 21, 5, 1, 78}},
  {act = 'fill', node = 'default:stone', coords = {9, 62, 21, 1, 9, 62}},
  {act = 'fill', node = 'default:stone', coords = {9, 62, 23, 5, 9, 62}},
  {act = 'fill', node = 'air', coords = {10, 60, 11, 25, 10, 60}},
  {act = 'fill', node = 'default:lava_source', coords = {10, 60, 11, 5, 10, 60}},
  {act = 'fill', node = 'default:stone', coords = {25, 30, 11, 9, 25, 30}},
  {act = 'fill', node = 'default:stone_block', coords = {25, 30, 20, 1, 25, 30}},
  {act = 'fill', node = 'default:stone', coords = {39, 2, 20, 1, 55, 15}},
  {act = 'fill', node = 'default:stone', coords = {39, 2, 20, 1, 10, 15}},
  {act = 'fill', node = 'default:stone', coords = {10, 15, 20, 1, 39, 2}},
  {act = 'fill', node = 'default:stone', coords = {55, 15, 20, 1, 39, 2}},
  {act = 'fill', node = 'air', coords = {70, 1, 21, 3, 39, 2}},
  {act = 'fill', node = 'air', coords = {9, 1, 21, 3, 39, 2}},
  {act = 'fill', node = 'air', coords = {39, 2, 21, 3, 70, 1}},
  {act = 'fill', node = 'air', coords = {39, 2, 21, 3, 9, 1}},
  {act = 'fill', node = 'default:stone', coords = {37, 6, 20, 2, 37, 6}},
  {act = 'fill', node = 'default:lava_source', coords = {38, 4, 20, 2, 38, 4}},
}

for _, item in pairs(geomoria_mod.default_exits) do
  table.insert(p, 2, table.copy(item))
end

geomoria_mod.plans['lake of fire'] = table.copy(p)


local node = geomoria_mod.clone_node('default:water_source')
node.liquid_range = 2
node.liquid_alternative_flowing = "geomoria:water_flowing_tame"
node.liquid_alternative_source = "geomoria:water_source_tame"
minetest.register_node('geomoria:water_source_tame', node)

local node = geomoria_mod.clone_node('default:water_flowing')
node.liquid_range = 2
node.liquid_alternative_flowing = "geomoria:water_flowing_tame"
node.liquid_alternative_source = "geomoria:water_source_tame"
minetest.register_node('geomoria:water_flowing_tame', node)

p = {
  {act = 'fill', node = 'air', coords = {29, 2, 11, 3, 55, 16}},
  {act = 'fill', node = 'air', coords = {25, 4, 11, 3, 69, 2}},
  {act = 'fill', node = 'air', coords = {25, 4, 11, 3, 9, 2}},
  {act = 'fill', node = 'air', coords = {9, 2, 11, 3, 9, 62}},
  {act = 'fill', node = 'air', coords = {11, 4, 11, 3, 9, 2}},
  {act = 'fill', node = 'air', coords = {11, 4, 11, 3, 24, 2}},
  {act = 'fill', node = 'air', coords = {11, 4, 11, 3, 39, 2}},
  {act = 'fill', node = 'air', coords = {11, 4, 11, 3, 54, 2}},
  {act = 'fill', node = 'air', coords = {11, 4, 11, 3, 69, 2}},
  {act = 'fill', node = 'air', coords = {49, 12, 11, 3, 59, 2}},
  {act = 'fill', node = 'air', coords = {49, 2, 11, 3, 55, 4}},
  {act = 'fill', node = 'air', coords = {26, 30, 11, 6, 25, 30}},
  {act = 'fill', node = 'air', coords = {49, 2, 11, 3, 19, 6}},
  {act = 'fill', node = 'air', coords = {29, 2, 11, 3, 9, 16}},
  {act = 'fill', node = 'air', treasure = 3, coords = {15, 10, 11, 6, 5, 10}},
  {act = 'fill', node = 'air', treasure = 3, coords = {15, 10, 11, 6, 20, 10}},
  {act = 'fill', node = 'air', treasure = 3, coords = {15, 10, 11, 6, 35, 10}},
  {act = 'fill', node = 'air', treasure = 3, coords = {15, 10, 11, 6, 50, 10}},
  {act = 'fill', node = 'air', treasure = 3, coords = {15, 10, 11, 6, 65, 10}},
  {act = 'fill', node = 'default:stone', coords = {18, 4, 11, 6, 8, 4}},
  {act = 'fill', node = 'default:stone', coords = {18, 4, 11, 6, 23, 4}},
  {act = 'fill', node = 'default:stone', coords = {18, 4, 11, 6, 38, 4}},
  {act = 'fill', node = 'default:stone', coords = {18, 4, 11, 6, 53, 4}},
  {act = 'fill', node = 'default:stone', coords = {18, 4, 11, 6, 68, 4}},
  {act = 'fill', node = 'default:water_source', coords = {19, 2, 11, 10, 9, 2}},
  {act = 'fill', node = 'default:water_source', coords = {19, 2, 11, 10, 24, 2}},
  {act = 'fill', node = 'default:water_source', coords = {19, 2, 11, 10, 39, 2}},
  {act = 'fill', node = 'default:water_source', coords = {19, 2, 11, 10, 54, 2}},
  {act = 'fill', node = 'default:water_source', coords = {19, 2, 11, 10, 69, 2}},

  {act = 'stair', node = 'stairs:stair_stone', param2 = 1, coords = {61, 10, 11, 10, 59, 2}},
  {act = 'stair', node = 'stairs:stair_stone', param2 = 2, coords = {39, 2, 11, 10, 1, 10}},
  {act = 'stair', node = 'stairs:stair_stone', param2 = 3, coords = {39, 10, 11, 10, 19, 2}},
  {act = 'fill', node = 'air', coords = {39, 2, 11, 3, 11, 14}},
  {act = 'fill', node = 'default:stone', coords = {61, 1, 21, 6, 59, 2}},

  {act = 'fill', node = 'air', floor = 'default:stone_block', coords = {10, 20, 21, 8, 0, 80}},
  {act = 'fill', node = 'air', coords = {1, 8, 21, 4, 56, 8}},
  {act = 'fill', node = 'air', coords = {1, 8, 21, 4, 36, 8}},
  {act = 'fill', node = 'air', coords = {1, 8, 21, 4, 16, 8}},
  {act = 'fill', node = 'air', coords = {4, 2, 21, 3, 64, 7}},
  {act = 'fill', node = 'air', coords = {6, 4, 21, 3, 69, 2}},
  {act = 'fill', node = 'air', coords = {4, 2, 21, 3, 44, 12}},
  {act = 'fill', node = 'air', coords = {6, 4, 21, 3, 49, 2}},
  {act = 'fill', node = 'air', coords = {4, 2, 21, 3, 24, 12}},
  {act = 'fill', node = 'air', coords = {6, 4, 21, 3, 29, 2}},
  {act = 'fill', node = 'air', coords = {4, 2, 21, 3, 9, 7}},
  {act = 'fill', node = 'air', coords = {6, 4, 21, 3, 9, 2}},
  {act = 'fill', node = 'air', coords = {31, 8, 21, 4, 56, 8}},
  {act = 'fill', node = 'air', coords = {31, 8, 21, 4, 36, 8}},
  {act = 'fill', node = 'air', coords = {31, 8, 21, 4, 16, 8}},
  {act = 'fill', node = 'air', coords = {34, 2, 21, 3, 64, 5}},
  {act = 'fill', node = 'air', coords = {30, 9, 21, 3, 69, 2}},
  {act = 'fill', node = 'air', coords = {34, 2, 21, 3, 44, 12}},
  {act = 'fill', node = 'air', coords = {30, 4, 21, 3, 49, 2}},
  {act = 'fill', node = 'air', coords = {34, 2, 21, 3, 24, 12}},
  {act = 'fill', node = 'air', coords = {30, 4, 21, 3, 29, 2}},
  {act = 'fill', node = 'air', coords = {34, 2, 21, 3, 9, 7}},
  {act = 'fill', node = 'air', coords = {30, 4, 21, 3, 9, 2}},
  {act = 'fill', node = 'air', coords = {71, 9, 21, 3, 59, 2}},
  {act = 'fill', node = 'air', coords = {39, 41, 21, 3, 39, 2}},
  {act = 'fill', node = 'air', coords = {71, 9, 21, 3, 19, 2}},
  {act = 'fill', node = 'air', coords = {59, 2, 21, 3, 0, 80}},
  {act = 'fill', node = 'air', coords = {39, 2, 21, 3, 69, 11}},

  {act = 'fill', node = 'default:stone', coords = {15, 10, 21, 1, 5, 10}},
  {act = 'fill', node = 'default:water_source', coords = {16, 8, 21, 1, 6, 8}},
  {act = 'fill', node = 'default:stone', coords = {19, 2, 21, 2, 9, 2}},
  {act = 'fill', node = 'geomoria:water_source_tame', coords = {19, 2, 23, 1, 9, 2}},
  {act = 'fill', node = 'default:stone', coords = {15, 10, 21, 1, 20, 10}},
  {act = 'fill', node = 'default:water_source', coords = {16, 8, 21, 1, 21, 8}},
  {act = 'fill', node = 'default:stone', coords = {19, 2, 21, 2, 24, 2}},
  {act = 'fill', node = 'geomoria:water_source_tame', coords = {19, 2, 23, 1, 24, 2}},
  {act = 'fill', node = 'default:stone', coords = {15, 10, 21, 1, 35, 10}},
  {act = 'fill', node = 'default:water_source', coords = {16, 8, 21, 1, 36, 8}},
  {act = 'fill', node = 'default:stone', coords = {19, 2, 21, 2, 39, 2}},
  {act = 'fill', node = 'geomoria:water_source_tame', coords = {19, 2, 23, 1, 39, 2}},
  {act = 'fill', node = 'default:stone', coords = {15, 10, 21, 1, 50, 10}},
  {act = 'fill', node = 'default:water_source', coords = {16, 8, 21, 1, 51, 8}},
  {act = 'fill', node = 'default:stone', coords = {19, 2, 21, 2, 54, 2}},
  {act = 'fill', node = 'geomoria:water_source_tame', coords = {19, 2, 23, 1, 54, 2}},
  {act = 'fill', node = 'default:stone', coords = {15, 10, 21, 1, 65, 10}},
  {act = 'fill', node = 'default:water_source', coords = {16, 8, 21, 1, 66, 8}},
  {act = 'fill', node = 'default:stone', coords = {19, 2, 21, 2, 69, 2}},
  {act = 'fill', node = 'geomoria:water_source_tame', coords = {19, 2, 23, 1, 69, 2}},

  {act = 'fill', node = 'air', coords = {51, 20, 31, 5, 65, 10}},
  {act = 'fill', node = 'air', coords = {51, 10, 31, 5, 15, 10}},
  {act = 'fill', node = 'air', coords = {55, 2, 31, 3, 25, 27}},
  {act = 'fill', node = 'air', coords = {60, 2, 31, 3, 41, 24}},
  {act = 'fill', node = 'air', coords = {57, 8, 31, 3, 39, 2}},
  {act = 'fill', node = 'default:stone', coords = {54, 4, 11, 6, 49, 4}},
  {act = 'fill', node = 'air', coords = {55, 2, 6, 25, 50, 2}},
  {act = 'fill', node = 'geomoria:false_wall', coords = {55, 2, 30, 1, 50, 2}},
  {act = 'fill', node = 'air', treasure = 1, coords = {65, 10, 31, 5, 35, 10}},
  {act = 'fill', node = 'air', coords = {69, 2, 31, 3, 45, 5}},
  {act = 'fill', node = 'air', treasure = 1, coords = {65, 10, 31, 5, 50, 10}},
  {act = 'fill', node = 'geomoria:false_wall', coords = {57, 1, 31, 3, 39, 2}},

  {act = 'stair', node = 'stairs:stair_stone', param2 = 3, coords = {61, 10, 21, 10, 19, 2}},
  {act = 'stair', node = 'stairs:stair_stone', param2 = 1, coords = {41, 10, 21, 10, 69, 2}},
}

for _, item in pairs(geomoria_mod.default_exits) do
  table.insert(p, 2, table.copy(item))
end

geomoria_mod.plans['fountain court'] = table.copy(p)


p = {
  {act = 'fill', node = 'air', coords = {19, 2, 21, 3, 0, 80}},
  {act = 'fill', node = 'air', coords = {39, 2, 21, 3, 0, 80}},
  {act = 'fill', node = 'air', coords = {0, 80, 21, 3, 39, 2}},
  {act = 'fill', node = 'air', coords = {59, 2, 21, 3, 0, 80}},
  {act = 'fill', node = 'air', coords = {0, 80, 21, 3, 59, 2}},
  {act = 'fill', node = 'air', coords = {0, 80, 21, 3, 19, 2}},
}

for _, item in pairs(geomoria_mod.default_exits) do
  table.insert(p, 2, table.copy(item))
end

geomoria_mod.plans['crossroads'] = table.copy(p)


p = {
  {act = 'fill', node = 'default:dirt', coords = {5, 70, 19, 2, 5, 70}},
  {act = 'fill', node = geomoria_mod.treasure_chest, random = 200, coords = {5, 70, 19, 1, 5, 70}},
  {act = 'fill', node = 'air', coords = {5, 70, 21, 7, 5, 70}},
  {act = 'fill', node = 'flowers:mushroom_brown', random = 4, coords = {5, 70, 21, 1, 5, 70}},
  {act = 'fill', node = 'air', coords = {19, 2, 21, 3, 75, 5}},
  {act = 'fill', node = 'air', coords = {39, 2, 21, 3, 75, 5}},
  {act = 'fill', node = 'air', coords = {59, 2, 21, 3, 75, 5}},
  {act = 'fill', node = 'air', coords = {19, 2, 21, 3, 0, 5}},
  {act = 'fill', node = 'air', coords = {39, 2, 21, 3, 0, 5}},
  {act = 'fill', node = 'air', coords = {59, 2, 21, 3, 0, 5}},
  {act = 'fill', node = 'air', coords = {0, 5, 21, 3, 19, 2}},
  {act = 'fill', node = 'air', coords = {0, 5, 21, 3, 39, 2}},
  {act = 'fill', node = 'air', coords = {0, 5, 21, 3, 59, 2}},
  {act = 'fill', node = 'air', coords = {75, 5, 21, 3, 19, 2}},
  {act = 'fill', node = 'air', coords = {75, 5, 21, 3, 39, 2}},
  {act = 'fill', node = 'air', coords = {75, 5, 21, 3, 59, 2}},

  {act = 'stair', node = 'stairs:stair_stone', param2 = 1, coords = {61, 10, 21, 10, 75, 2}},
  {act = 'stair', node = 'stairs:stair_stone', param2 = 3, coords = {9, 10, 21, 10, 3, 2}},
  {act = 'fill', node = 'default:dirt', coords = {5, 70, 29, 2, 5, 70}},
  {act = 'fill', node = geomoria_mod.treasure_chest, random = 200, coords = {5, 70, 29, 1, 5, 70}},
  {act = 'fill', node = 'air', coords = {5, 70, 31, 7, 5, 70}},
  {act = 'fill', node = 'flowers:mushroom_brown', random = 4, coords = {5, 70, 31, 1, 5, 70}},
  {act = 'fill', node = 'air', coords = {71, 6, 31, 3, 75, 2}},
  {act = 'fill', node = 'air', coords = {3, 6, 31, 3, 3, 2}},

  {act = 'stair', node = 'stairs:stair_stone', param2 = 2, coords = {75, 2, 31, 10, 65, 10}},
  {act = 'stair', node = 'stairs:stair_stone', param2 = 0, coords = {3, 2, 31, 10, 5, 10}},

  {act = 'fill', node = 'default:dirt', coords = {5, 70, 39, 2, 5, 70}},
  {act = 'fill', node = geomoria_mod.treasure_chest, random = 200, coords = {5, 70, 39, 1, 5, 70}},
  {act = 'fill', node = 'air', coords = {5, 70, 41, 7, 5, 70}},
  {act = 'fill', node = 'flowers:mushroom_brown', random = 4, coords = {5, 70, 41, 1, 5, 70}},
  {act = 'fill', node = 'air', coords = {75, 2, 41, 3, 60, 5}},
  {act = 'fill', node = 'air', coords = {3, 2, 41, 3, 15, 5}},
}

for _, item in pairs(geomoria_mod.default_exits) do
  table.insert(p, 2, table.copy(item))
end

geomoria_mod.plans['mushroom garden'] = table.copy(p)


p = {
  {act = 'fill', node = 'air', coords = {15, 50, 39, 6, 15, 50}},
  {act = 'fill', node = 'air', coords = {16, 48, 38, 7, 16, 48}},
  {act = 'fill', node = 'air', coords = {17, 46, 37, 8, 17, 46}},
  {act = 'fill', node = 'air', coords = {18, 44, 36, 9, 18, 44}},
  {act = 'fill', node = 'air', coords = {19, 42, 35, 10, 19, 42}},
  {act = 'fill', node = 'air', coords = {20, 40, 34, 11, 20, 40}},
  {act = 'fill', node = 'air', coords = {21, 38, 33, 12, 21, 38}},
  {act = 'fill', node = 'air', coords = {22, 36, 32, 13, 22, 36}},
  {act = 'fill', node = 'air', treasure = 1, coords = {24, 32, 21, 24, 24, 32}},

  {act = 'fill', node = 'air', treasure = 4, coords = {30, 20, 21, 5, 65, 10}},
  {act = 'fill', node = 'air', treasure = 4, coords = {30, 20, 21, 5, 5, 10}},
  {act = 'fill', node = 'air', treasure = 4, coords = {65, 10, 21, 5, 30, 20}},
  {act = 'fill', node = 'air', treasure = 4, coords = {5, 10, 21, 5, 30, 20}},
  {act = 'fill', node = 'air', coords = {39, 2, 21, 3, 56, 24}},
  {act = 'fill', node = 'air', coords = {39, 2, 21, 3, 0, 24}},
  {act = 'fill', node = 'air', coords = {77, 3, 21, 3, 19, 2}},
  {act = 'fill', node = 'air', coords = {77, 3, 21, 3, 59, 2}},
  {act = 'fill', node = 'air', coords = {0, 3, 21, 3, 59, 2}},
  {act = 'fill', node = 'air', coords = {0, 3, 21, 3, 19, 2}},
  {act = 'fill', node = 'air', coords = {19, 2, 21, 3, 77, 3}},
  {act = 'fill', node = 'air', coords = {59, 2, 21, 3, 77, 3}},
  {act = 'fill', node = 'air', coords = {59, 2, 21, 3, 0, 3}},
  {act = 'fill', node = 'air', coords = {19, 2, 21, 3, 0, 3}},
  {act = 'fill', node = 'air', coords = {0, 24, 21, 3, 39, 2}},
  {act = 'fill', node = 'air', coords = {56, 24, 21, 3, 39, 2}},

  {act = 'fill', node = 'air', coords = {19, 2, 31, 3, 65, 2}},
  {act = 'fill', node = 'air', coords = {59, 2, 31, 3, 65, 2}},
  {act = 'fill', node = 'air', coords = {59, 2, 31, 3, 13, 2}},
  {act = 'fill', node = 'air', coords = {19, 2, 31, 3, 13, 2}},
  {act = 'fill', node = 'air', coords = {65, 2, 31, 3, 19, 2}},
  {act = 'fill', node = 'air', coords = {65, 2, 31, 3, 59, 2}},
  {act = 'fill', node = 'air', coords = {13, 2, 31, 3, 59, 2}},
  {act = 'fill', node = 'air', coords = {13, 2, 31, 3, 19, 2}},

  {act = 'stair', node = 'air', param2 = 2, coords = {59, 2, 21, 10, 67, 10}},
  {act = 'stair', node = 'air', param2 = 0, coords = {59, 2, 21, 10, 3, 10}},
  {act = 'stair', node = 'air', param2 = 0, coords = {19, 2, 21, 10, 3, 10}},
  {act = 'stair', node = 'air', param2 = 3, coords = {67, 10, 21, 10, 19, 2}},
  {act = 'stair', node = 'air', param2 = 3, coords = {67, 10, 21, 10, 59, 2}},
  {act = 'stair', node = 'air', param2 = 1, coords = {3, 10, 21, 10, 59, 2}},
  {act = 'stair', node = 'air', param2 = 1, coords = {3, 10, 21, 10, 19, 2}},
  {act = 'stair', node = 'air', param2 = 2, coords = {19, 2, 21, 10, 67, 10}},

  {act = 'fill', node = 'air', coords = {65, 2, 39, 3, 29, 22}},
  {act = 'fill', node = 'air', coords = {13, 2, 39, 3, 29, 22}},
  {act = 'fill', node = 'air', coords = {29, 22, 39, 3, 65, 2}},
  {act = 'fill', node = 'air', coords = {29, 22, 39, 3, 13, 2}},

  {act = 'stair', node = 'air', param2 = 2, coords = {65, 2, 31, 8, 51, 8}},
  {act = 'stair', node = 'air', param2 = 0, coords = {65, 2, 31, 8, 21, 8}},
  {act = 'stair', node = 'air', param2 = 2, coords = {13, 2, 31, 8, 51, 8}},
  {act = 'stair', node = 'air', param2 = 0, coords = {13, 2, 31, 8, 21, 8}},
  {act = 'stair', node = 'air', param2 = 3, coords = {51, 8, 31, 8, 65, 2}},
  {act = 'stair', node = 'air', param2 = 1, coords = {21, 8, 31, 8, 65, 2}},
  {act = 'stair', node = 'air', param2 = 3, coords = {51, 8, 31, 8, 13, 2}},
  {act = 'stair', node = 'air', param2 = 1, coords = {21, 8, 31, 8, 13, 2}},
}

for _, item in pairs(geomoria_mod.default_exits) do
  table.insert(p, 2, table.copy(item))
end

geomoria_mod.plans['arena'] = table.copy(p)


p = {
  {act = 'fill', node = 'air', coords = {0, 1, 21, 2, 19, 2}},
  {act = 'fill', node = 'air', coords = {0, 1, 21, 2, 39, 2}},
  {act = 'fill', node = 'air', coords = {0, 1, 21, 2, 59, 2}},
  {act = 'fill', node = 'air', coords = {79, 1, 21, 2, 19, 2}},
  {act = 'fill', node = 'air', coords = {79, 1, 21, 2, 39, 2}},
  {act = 'fill', node = 'air', coords = {79, 1, 21, 2, 59, 2}},
  {act = 'fill', node = 'air', coords = {19, 2, 21, 2, 0, 1}},
  {act = 'fill', node = 'air', coords = {39, 2, 21, 2, 0, 1}},
  {act = 'fill', node = 'air', coords = {59, 2, 21, 2, 0, 1}},
  {act = 'fill', node = 'air', coords = {19, 2, 21, 2, 79, 1}},
  {act = 'fill', node = 'air', coords = {39, 2, 21, 2, 79, 1}},
  {act = 'fill', node = 'air', coords = {59, 2, 21, 2, 79, 1}},

  {act = 'fill', node = 'air', coords = {38, 4, 21, 3, 1, 78}},
  {act = 'fill', node = 'air', coords = {1, 78, 21, 3, 58, 4}},
  {act = 'fill', node = 'air', coords = {1, 78, 21, 3, 18, 4}},
  {act = 'fill', node = 'air', coords = {1, 8, 21, 3, 37, 6}},
  {act = 'fill', node = 'air', coords = {10, 25, 21, 5, 30, 20}},
  {act = 'fill', node = 'air', coords = {35, 3, 21, 3, 38, 4}},
  {act = 'fill', node = 'air', coords = {42, 37, 21, 3, 38, 4}},
  {act = 'fill', node = 'air', coords = {51, 2, 21, 3, 42, 1}},
  {act = 'fill', node = 'air', coords = {51, 2, 21, 3, 37, 1}},
  {act = 'fill', node = 'air', coords = {69, 2, 21, 3, 42, 1}},
  {act = 'fill', node = 'air', coords = {69, 2, 21, 3, 37, 1}},
  {act = 'fill', node = 'air', coords = {44, 16, 21, 6, 43, 9}},
  {act = 'fill', node = 'air', coords = {44, 16, 21, 6, 28, 9}},
  {act = 'fill', node = 'air', coords = {62, 16, 21, 6, 43, 9}},
  {act = 'fill', node = 'air', coords = {62, 16, 21, 6, 28, 9}},

  {act = 'fill', node = 'air', coords = {24, 13, 21, 3, 71, 2}},
  {act = 'fill', node = 'air', coords = {43, 13, 21, 3, 71, 2}},
  {act = 'fill', node = 'air', coords = {24, 13, 21, 3, 7, 2}},
  {act = 'fill', node = 'air', coords = {43, 13, 21, 3, 7, 2}},
  {act = 'fill', node = 'air', coords = {16, 8, 21, 3, 71, 8}},
  {act = 'fill', node = 'air', coords = {56, 8, 21, 3, 71, 8}},
  {act = 'fill', node = 'air', coords = {16, 8, 21, 3, 1, 8}},
  {act = 'fill', node = 'air', coords = {56, 8, 21, 3, 1, 8}},

  {act = 'fill', node = 'doors:door_wood_a', param2 = 3, coords = {0, 1, 21, 1, 59, 1}},
  {act = 'fill', node = 'doors:door_wood_b', param2 = 3, coords = {0, 1, 21, 1, 60, 1}},
  {act = 'fill', node = 'doors:door_wood_b', param2 = 1, coords = {79, 1, 21, 1, 59, 1}},
  {act = 'fill', node = 'doors:door_wood_a', param2 = 1, coords = {79, 1, 21, 1, 60, 1}},

  {act = 'fill', node = 'doors:door_wood_a', param2 = 3, coords = {0, 1, 21, 1, 19, 1}},
  {act = 'fill', node = 'doors:door_wood_b', param2 = 3, coords = {0, 1, 21, 1, 20, 1}},
  {act = 'fill', node = 'doors:door_wood_b', param2 = 1, coords = {79, 1, 21, 1, 19, 1}},
  {act = 'fill', node = 'doors:door_wood_a', param2 = 1, coords = {79, 1, 21, 1, 20, 1}},

  {act = 'fill', node = 'doors:door_wood_a', param2 = 0, coords = {39, 1, 21, 1, 79, 1}},
  {act = 'fill', node = 'doors:door_wood_b', param2 = 0, coords = {40, 1, 21, 1, 79, 1}},
  {act = 'fill', node = 'doors:door_wood_b', param2 = 2, coords = {39, 1, 21, 1, 0, 1}},
  {act = 'fill', node = 'doors:door_wood_a', param2 = 2, coords = {40, 1, 21, 1, 0, 1}},

  {act = 'fill', node = 'air', coords = {37, 1, 21, 2, 71, 2}},
  {act = 'fill', node = 'air', coords = {42, 1, 21, 2, 71, 2}},
  {act = 'fill', node = 'doors:door_wood_b', param2 = 1, coords = {37, 1, 21, 1, 71, 1}},
  {act = 'fill', node = 'doors:door_wood_a', param2 = 1, coords = {37, 1, 21, 1, 72, 1}},
  {act = 'fill', node = 'doors:door_wood_a', param2 = 3, coords = {42, 1, 21, 1, 71, 1}},
  {act = 'fill', node = 'doors:door_wood_b', param2 = 3, coords = {42, 1, 21, 1, 72, 1}},

  {act = 'fill', node = 'air', coords = {37, 1, 21, 2, 7, 2}},
  {act = 'fill', node = 'air', coords = {42, 1, 21, 2, 7, 2}},
  {act = 'fill', node = 'doors:door_wood_b', param2 = 1, coords = {37, 1, 21, 1, 7, 1}},
  {act = 'fill', node = 'doors:door_wood_a', param2 = 1, coords = {37, 1, 21, 1, 8, 1}},
  {act = 'fill', node = 'doors:door_wood_a', param2 = 3, coords = {42, 1, 21, 1, 7, 1}},
  {act = 'fill', node = 'doors:door_wood_b', param2 = 3, coords = {42, 1, 21, 1, 8, 1}},

  {act = 'fill', node = 'doors:door_wood_b', param2 = 1, coords = {79, 1, 21, 1, 39, 1}},
  {act = 'fill', node = 'doors:door_wood_a', param2 = 1, coords = {79, 1, 21, 1, 40, 1}},

  {act = 'fill', node = 'air', coords = {9, 1, 21, 2, 39, 2}},
  {act = 'fill', node = 'doors:door_wood_b', param2 = 1, coords = {9, 1, 21, 1, 39, 1}},
  {act = 'fill', node = 'doors:door_wood_a', param2 = 1, coords = {9, 1, 21, 1, 40, 1}},

  {act = 'fill', node = 'geomoria:false_wall', coords = {28, 1, 21, 2, 26, 1}},
  {act = 'fill', node = 'air', coords = {27, 3, 31, 3, 26, 3}},
  {act = 'fill', node = 'air', coords = {28, 1, 31, 3, 29, 10}},
  {act = 'fill', node = 'air', coords = {3, 74, 31, 3, 39, 2}},
  {act = 'fill', node = 'air', treasure = 3, coords = {3, 9, 31, 4, 42, 6}},
  {act = 'fill', node = 'air', treasure = 3, coords = {47, 9, 31, 4, 42, 6}},
  {act = 'fill', node = 'air', treasure = 3, coords = {32, 9, 31, 4, 32, 6}},
  {act = 'fill', node = 'air', treasure = 3, coords = {64, 9, 31, 4, 32, 6}},
  {act = 'fill', node = 'air', treasure = 3, coords = {11, 9, 31, 4, 32, 6}},
  {act = 'fill', node = 'air', coords = {6, 2, 31, 3, 41, 1}},
  {act = 'fill', node = 'air', coords = {51, 2, 31, 3, 41, 1}},
  {act = 'fill', node = 'air', coords = {14, 2, 31, 3, 38, 1}},
  {act = 'fill', node = 'air', coords = {36, 2, 31, 3, 38, 1}},
  {act = 'fill', node = 'air', coords = {66, 2, 31, 3, 38, 1}},
  {act = 'ladder', node = 'default:ladder_steel', param2 = 2, coords = {28, 1, 21, 10, 27, 1}},
}

for _, o in pairs({0, 43}) do
  for x = 4 + o, 32 + o, 4 do
    for _, y in pairs({57, 17}) do
      local i = {act = 'fill', node = 'air', coords = {x, 1, 21, 2, y + 5, 1}}
      table.insert(p, i)
      i = {act = 'fill', node = 'doors:door_wood_a', param2 = 0, coords = {x, 1, 21, 1, y + 5, 1}}
      table.insert(p, i)
      i = {act = 'fill', node = 'air', coords = {x - 1, 3, 21, 3, y + 6, 3}}
      table.insert(p, i)

      i = {act = 'fill', node = 'air', coords = {x, 1, 21, 2, y, 1}}
      table.insert(p, i)
      i = {act = 'fill', node = 'doors:door_wood_a', param2 = 2, coords = {x, 1, 21, 1, y, 1}}
      table.insert(p, i)
      i = {act = 'fill', node = 'air', coords = {x - 1, 3, 21, 3, y - 3, 3}}
      table.insert(p, i)
    end
  end
end

geomoria_mod.plans['prison'] = table.copy(p)
