-- Geomoria geomorph.lua
-- Copyright Duane Robertson (duane@duanerobertson.com), 2017
-- Distributed under the LGPLv2.1 (https://www.gnu.org/licenses/old-licenses/lgpl-2.1.en.html)


local max_depth = 31000


newnode = geomoria_mod.clone_node("air")
newnode.light_source = 14
minetest.register_node("geomoria:bright_air", newnode)



geomoria_mod.geomorph = function(minp, maxp, data, p2data, area, node)
	if not (minp and maxp and data and p2data and area and node and type(data) == 'table' and type(p2data) == 'table') then
		return
	end

	local csize = vector.add(vector.subtract(maxp, minp), 1)
	local write = false

	local index = 0
	local index3d = 0
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
  local plan = geomoria_mod.plans[plan_name]
  local rot = math.random(4) - 1

  for _, item in pairs(plan) do
    if item.act == 'fill' then
      local c = item.coords
      local n = item.node

      if not (c and n and type(c) == 'table' and type(n) == 'string' and #c == 6) then
        print('Geomoria: Invalid plan')
        return
      end

      local x, z
      for dz = c[5], c[5] + c[6] - 1 do
        for dy = c[3], c[3] + c[4] - 1 do
          for dx = c[1], c[1] + c[2] - 1 do
            if rot == 0 then
              x, z = minp.x + dx, minp.z + dz
            elseif rot == 1 then
              x, z = minp.x + csize.z - dz - 1, minp.z + dx
            elseif rot == 2 then
              x, z = minp.x + csize.x - dx - 1, minp.z + csize.z - dz - 1
            elseif rot == 3 then
              x, z = minp.x + dz, minp.z + csize.x - dx - 1
            end

            local ivm = area:index(x, minp.y + dy, z)
            data[ivm] = node[n]
            write = true
          end
        end
      end
    end
  end

	return write
end
