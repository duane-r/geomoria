-- Geomoria plans.lua
-- Copyright Duane Robertson (duane@duanerobertson.com), 2017
-- Distributed under the LGPLv2.1 (https://www.gnu.org/licenses/old-licenses/lgpl-2.1.en.html)


local p = {
  {act = 'fill', node = 'default:stone_block', coords = {0, 79, 20, 59, 0, 79}},
  {act = 'fill', node = 'air', coords = {1, 78, 21, 58, 1, 78}},
}

for _, item in pairs(geomoria_mod.default_exits) do
  table.insert(p, 2, table.copy(item))
  local i = table.copy(item)
  if i.coords[1] == 0 or i.coords[1] == 79 then
    i.node = 'default:meselamp'
    i.coords[5] = i.coords[5] - 1
    i.coords[6] = i.coords[6] - 2
    i.coords[3] = i.coords[3] + 1
    table.insert(p, i)
    i = table.copy(item)
    i.node = 'default:meselamp'
    i.coords[5] = i.coords[5] + 2
    i.coords[6] = i.coords[6] + 1
    i.coords[3] = i.coords[3] + 1
    table.insert(p, i)
  elseif i.coords[5] == 0 or i.coords[5] == 79 then
    i.node = 'default:meselamp'
    i.coords[1] = i.coords[1] - 1
    i.coords[2] = i.coords[2] - 2
    i.coords[3] = i.coords[3] + 1
    table.insert(p, i)
    i = table.copy(item)
    i.node = 'default:meselamp'
    i.coords[1] = i.coords[1] + 2
    i.coords[2] = i.coords[2] + 1
    i.coords[3] = i.coords[3] + 1
    table.insert(p, i)
  end
end

for z = 7, 78, 9 do
  for x = 7, 78, 9 do
    local i = {act = 'fill', node = 'default:stone_block', coords = {z, z + 1, 21, 58, x, x + 1}}
    table.insert(p, i)
    for y = 25, 57, 9 do
      i = {act = 'fill', node = 'default:meselamp', coords = {z, z + 1, y, y, x, x + 1}}
      table.insert(p, i)
    end
  end
end

geomoria_mod.plans['pillared room'] = table.copy(p)
