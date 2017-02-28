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
        if not geomoria_mod.generate_ores or data[ivm] == node['air'] or data[ivm] == node['default:lava_source'] or data[ivm] == node['default:water_source'] then
          data[ivm] = node['default:stone']
        end
        ivm = ivm + 1
      end
    end
  end

  local plan_name = geomoria_mod.plans_keys[math.random(#geomoria_mod.plans_keys)]
  local plan = geomoria_mod.plans[plan_name]
  local rot = math.random(4) - 1

  for _, item in pairs(plan) do
    if item.act == 'fill' or item.act == 'stair' or item.act == 'ladder' then
      local c = item.coords
      local n = item.node
      local p2 = item.param2

      if p2 and item.act == 'ladder' then
        -- 2 X+   3 X-   4 Z+   5 Z-
        local tran = '4253'
        local fp2 = tran:find(tostring(p2)) - 1
        p2 = (fp2 + rot) % 4
        p2 = tonumber(tran:sub(p2 + 1, p2 + 1))
      elseif p2 and p2 < 4 then
        --p2 = math.floor(p2 / 4) * 4 + (p2 + rot) % 4
        p2 = (p2 + rot) % 4
      else
        p2 = nil
      end

      if not (c and n and type(c) == 'table' and type(n) == 'string' and #c == 6) then
        print('Geomoria: Invalid plan')
        return
      end

      local min_x, max_x, min_y, max_y, min_z, max_z, dy

      if rot == 0 then
        min_x, max_x = c[1], c[1] + c[2] - 1
        min_z, max_z = c[5], c[5] + c[6] - 1
      elseif rot == 1 then
        min_x, max_x = c[5], c[5] + c[6] - 1
        min_z, max_z = csize.x - (c[1] + c[2]), csize.x - c[1] - 1
      elseif rot == 2 then
        min_x, max_x = csize.x - (c[1] + c[2]), csize.x - c[1] - 1
        min_z, max_z = csize.z - (c[5] + c[6]), csize.z - c[5] - 1
      elseif rot == 3 then
        min_x, max_x = csize.z - (c[5] + c[6]), csize.z - c[5] - 1
        min_z, max_z = c[1], c[1] + c[2] - 1
      end

      if item.act == 'fill' or item.act == 'ladder' then
        if item.line then
          for dz = min_z - 1, max_z + 1 do
            for dy = c[3] - 1, c[3] + c[4] do
              for dx = min_x - 1, max_x + 1 do
                local ivm = area:index(minp.x + dx, minp.y + dy, minp.z + dz)
                if data[ivm] == node['default:stone'] then
                  data[ivm] = node[item.line]
                end
              end
            end
          end
        end
        if item.floor then
          for dz = min_z - 1, max_z + 1 do
            for dx = min_x - 1, max_x + 1 do
              local ivm = area:index(minp.x + dx, minp.y + c[3] - 1, minp.z + dz)
              if data[ivm] == node['default:stone'] then
                data[ivm] = node[item.floor]
              end
            end
          end
        end

        if geomoria_mod.cheap_lighting and item.node == 'air' then
          if c[4] < 13 and c[2] > 10 and c[6] > 10 then
            for dz = min_z, max_z do
              for dx = min_x, max_x do
                if dx % 8 == 0 and dz % 8 == 0 then
                  local ivm = area:index(minp.x + dx, minp.y + c[3] + c[4], minp.z + dz)
                  if data[ivm] == node['default:stone'] or data[ivm] == node['default:stone_block'] then
                    data[ivm] = node['default:meselamp']
                  end
                end
              end
            end
          else
            local alt = minp.y + c[3] + math.floor(c[4] / 2)
            for dz = min_z - 1, max_z + 1, max_z - min_z + 2 do
              for dx = min_x, max_x do
                if dx % 10 == 0 then
                  local ivm = area:index(minp.x + dx, alt, minp.z + dz)
                  if data[ivm] == node['default:stone'] or data[ivm] == node['default:stone_block'] then
                    data[ivm] = node['default:meselamp']
                  end
                end
              end
            end
            for dz = min_z, max_z do
              for dx = min_x - 1, max_x + 1, max_x - min_x + 2 do
                if dz % 10 == 0 then
                  local ivm = area:index(minp.x + dx, alt, minp.z + dz)
                  if data[ivm] == node['default:stone'] or data[ivm] == node['default:stone_block'] then
                    data[ivm] = node['default:meselamp']
                  end
                end
              end
            end
          end
        end

        for dz = min_z, max_z do
          for dy = c[3], c[3] + c[4] - 1 do
            for dx = min_x, max_x do
              local ivm = area:index(minp.x + dx, minp.y + dy, minp.z + dz)
              data[ivm] = node[n]
              p2data[ivm] = p2
            end
          end
        end

        write = true
      elseif item.act == 'stair' then
        for dz = min_z, max_z do
          for dx = min_x, max_x do
            if p2 == 0 then
              dy = c[3] + dz - min_z
            elseif p2 == 1 then
              dy = c[3] + dx - min_x
            elseif p2 == 2 then
              dy = c[3] + max_z - dz
            elseif p2 == 3 then
              dy = c[3] + max_x - dx
            end

            for y = c[3], dy - 1 do
              local ivm = area:index(minp.x + dx, minp.y + y, minp.z + dz)
              data[ivm] = node['default:stone']
            end
            for y = dy + 1, c[3] + c[4] + 2 do
              local ivm = area:index(minp.x + dx, minp.y + y, minp.z + dz)
              data[ivm] = node['air']
            end
            local ivm = area:index(minp.x + dx, minp.y + dy, minp.z + dz)
            data[ivm] = node[n]
            p2data[ivm] = p2
          end
        end
        write = true
      end
    end
  end

	return write
end
