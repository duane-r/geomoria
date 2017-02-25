-- Geomoria geomorph.lua
-- Copyright Duane Robertson (duane@duanerobertson.com), 2017
-- Distributed under the LGPLv2.1 (https://www.gnu.org/licenses/old-licenses/lgpl-2.1.en.html)


local max_depth = 31000


newnode = geomoria_mod.clone_node("air")
newnode.light_source = 14
minetest.register_node("geomoria:bright_air", newnode)


--local exits = {
--  {act = 'fill', node = 'air', coords = {0, 0, 21, 22, 25, 26}},
--  {act = 'fill', node = 'air', coords = {0, 0, 21, 22, 54, 55}},
--  {act = 'fill', node = 'air', coords = {79, 79, 21, 22, 25, 26}},
--  {act = 'fill', node = 'air', coords = {79, 79, 21, 22, 54, 55}},
--  {act = 'fill', node = 'air', coords = {25, 26, 21, 22, 0, 0}},
--  {act = 'fill', node = 'air', coords = {54, 55, 21, 22, 0, 0}},
--  {act = 'fill', node = 'air', coords = {25, 26, 21, 22, 79, 79}},
--  {act = 'fill', node = 'air', coords = {54, 55, 21, 22, 79, 79}},
--}


geomoria_mod.geomorph = function(minp, maxp, data, p2data, area, node)
	if not (minp and maxp and data and p2data and area and node and type(data) == 'table' and type(p2data) == 'table') then
		return
	end

	local csize = vector.add(vector.subtract(maxp, minp), 1)
	local write = false

	local index = 0
	local index3d = 0
  write = true
	for z = minp.z, maxp.z do
    for y = minp.y, maxp.y do
      local ivm = area:index(minp.x, y, z)
      for x = minp.x, maxp.x do
        data[ivm] = node['default:stone']
        ivm = ivm + 1
      end
    end
  end

  local plan_name = geomoria_mod.plans_keys[math.random(#geomoria_mod.plans_keys)]
  --local plan = table.copy(geomoria_mod.plans[plan_name])
  --for _, item in pairs(exits) do
  --  table.insert(plan, 1, item)
  --end
  local plan = geomoria_mod.plans[plan_name]

  for _, item in pairs(plan) do
    if item.act == 'fill' then
      local c = item.coords
      local n = item.node

      if not (c and n and type(c) == 'table' and type(n) == 'string' and #c == 6) then
        print('Geomoria: Invalid plan')
        return
      end

      for dz = c[1], c[2] do
        for dy = c[3], c[4] do
          for dx = c[5], c[6] do
            local ivm = area:index(minp.x + dx, minp.y + dy, minp.z + dz)
            data[ivm] = node[n]
            write = true
          end
        end
      end
    end
  end

	return write
end
