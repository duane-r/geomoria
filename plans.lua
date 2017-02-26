-- Geomoria plans.lua
-- Copyright Duane Robertson (duane@duanerobertson.com), 2017
-- Distributed under the LGPLv2.1 (https://www.gnu.org/licenses/old-licenses/lgpl-2.1.en.html)


-- stairs at 0 go up to -X


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
  {act = 'fill', node = 'air', coords = {69, 2, 21, 3, 23, 41}},
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
  {act = 'fill', node = 'air', coords = {17, 2, 21, 3, 13, 4}},
  {act = 'fill', node = 'air', coords = {73, 2, 21, 3, 21, 2}},
  {act = 'stair', node = 'stairs:stair_stone', param2 = 1, coords = {33, 10, 21, 10, 14, 1}},
  {act = 'stair', node = 'stairs:stair_stone', param2 = 0, coords = {60, 1, 21, 10, 3, 10}},
}

for _, item in pairs(geomoria_mod.default_exits) do
  table.insert(p, 2, table.copy(item))
end

geomoria_mod.plans['market'] = table.copy(p)
