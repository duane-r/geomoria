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
  local wetness = 0

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
    if item.act == 'fill' or item.act == 'stair' or item.act == 'ladder' or item.act == 'cylinder' or item.act == 'sphere' then
      local coords = item.coords
      local p2 = item.param2

      if item.node == 'default:lava_source' then
        wetness = wetness - 10 * (coords[2] * coords[4] * coords[6])
      elseif item.node == 'default:water_source' then
        wetness = wetness + 2 * (coords[2] * coords[4] * coords[6])
      elseif item.node == 'default:dirt' then
        wetness = wetness + (coords[2] * coords[4] * coords[6])
      end

      if p2 and item.act == 'ladder' then
        -- 2 X+   3 X-   4 Z+   5 Z-
        local tran = '4253'
        local fp2 = tran:find(tostring(p2)) - 1
        p2 = (fp2 + rot) % 4
        p2 = tonumber(tran:sub(p2 + 1, p2 + 1))
      elseif p2 and p2 < 4 then
        --p2 = math.floor(p2 / 4) * 4 + (p2 + rot) % 4
        p2 = (p2 + rot) % 4
      elseif p2 then
        --
      else
        p2 = nil
      end

      if not (coords and item.node and type(coords) == 'table' and type(item.node) == 'string' and #coords == 6) then
        print('Geomoria: Invalid plan')
        return
      end

      local min_x, max_x, min_z, max_z, dy

      if rot == 0 then
        min_x, max_x = coords[1], coords[1] + coords[2] - 1
        min_z, max_z = coords[5], coords[5] + coords[6] - 1
      elseif rot == 1 then
        min_x, max_x = coords[5], coords[5] + coords[6] - 1
        min_z, max_z = csize.x - (coords[1] + coords[2]), csize.x - coords[1] - 1
      elseif rot == 2 then
        min_x, max_x = csize.x - (coords[1] + coords[2]), csize.x - coords[1] - 1
        min_z, max_z = csize.z - (coords[5] + coords[6]), csize.z - coords[5] - 1
      elseif rot == 3 then
        min_x, max_x = csize.z - (coords[5] + coords[6]), csize.z - coords[5] - 1
        min_z, max_z = coords[1], coords[1] + coords[2] - 1
      end

      if item.act == 'fill' or item.act == 'ladder' then
        if item.line then
          for dz = min_z - 1, max_z + 1 do
            for dy = coords[3] - 1, coords[3] + coords[4] do
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
              local ivm = area:index(minp.x + dx, minp.y + coords[3] - 1, minp.z + dz)
              if data[ivm] == node['default:stone'] then
                data[ivm] = node[item.floor]
              end
            end
          end
        end

        if geomoria_mod.cheap_lighting and item.node == 'air' then
          if coords[4] < 13 and coords[2] > 10 and coords[6] > 10 then
            for dz = min_z, max_z do
              for dx = min_x, max_x do
                if dx % 8 == 0 and dz % 8 == 0 then
                  local ivm = area:index(minp.x + dx, minp.y + coords[3] + coords[4], minp.z + dz)
                  if data[ivm] == node['default:stone'] or data[ivm] == node['default:stone_block'] then
                    data[ivm] = node['default:meselamp']
                  end
                end
              end
            end
          else
            local alt = minp.y + coords[3] + math.floor(coords[4] / 2)
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
          for dy = coords[3], coords[3] + coords[4] - 1 do
            for dx = min_x, max_x do
              if not item.random or math.random(item.random) == 1 then
                local ivm = area:index(minp.x + dx, minp.y + dy, minp.z + dz)
                data[ivm] = node[item.node]
                p2data[ivm] = p2
              end
            end
          end
        end

        if item.treasure and math.random(item.treasure) == 1 then
          local x = minp.x + min_x + math.random(max_x - min_x + 1) - 1
          local y = minp.y + coords[3]
          local z = minp.z + min_z + math.random(max_z - min_z + 1) - 1
          local ivm = area:index(x, y, z)
          data[ivm] = node[geomoria_mod.treasure_chest]
        end

        write = true
      elseif item.act == 'stair' then
        for dz = min_z, max_z do
          for dx = min_x, max_x do
            if p2 == 0 then
              dy = coords[3] + dz - min_z
            elseif p2 == 1 then
              dy = coords[3] + dx - min_x
            elseif p2 == 2 then
              dy = coords[3] + max_z - dz
            elseif p2 == 3 then
              dy = coords[3] + max_x - dx
            end

            local y1 = item.depth and dy - item.depth or coords[3]
            y1 = math.max(y1, coords[3])
            for y = y1, dy - 1 do
              local ivm = area:index(minp.x + dx, minp.y + y, minp.z + dz)
              data[ivm] = node['default:stone']
            end
            y1 = item.height and dy + item.height or coords[3] + coords[4] + 2
            y1 = math.min(y1, coords[3] + coords[4] + 2)
            for y = dy + 1, y1 do
              local ivm = area:index(minp.x + dx, minp.y + y, minp.z + dz)
              data[ivm] = node['air']
            end
            local ivm = area:index(minp.x + dx, minp.y + dy, minp.z + dz)
            data[ivm] = node[item.node]
            p2data[ivm] = p2
          end
        end
        write = true
      elseif item.act == 'cylinder' then
        local ax = item.axis
        if ax ~= 'y' and (rot == 1 or rot == 3) then
          if ax == 'z' then
            ax = 'x'
          else
            ax = 'z'
          end
        end

        local r2 = (coords[4] / 2) ^ 2
        if ax == 'y' then
          r2 = (coords[2] / 2) ^ 2
        end

        local rx = (min_x + max_x) / 2
        local ry = (coords[3] + coords[3] + coords[4] - 1) / 2
        local rz = (min_z + max_z) / 2

        min_x = math.max(min_x, 0)
        local min_y = math.max(coords[3], 0)
        min_z = math.max(min_z, 0)
        max_x = math.min(max_x, csize.x - 1)
        local max_y = math.min(coords[3] + coords[4] - 1, csize.y - 1)
        max_z = math.min(max_z, csize.z - 1)

        for dz = min_z, max_z do
          for dy = min_y, max_y do
            for dx = min_x, max_x do
              if (ax == 'x' and (rz - dz) ^ 2 + (ry - dy) ^ 2 <= r2) or
                (ax == 'y' and (rx - dx) ^ 2 + (rz - dz) ^ 2 <= r2) or
                (ax == 'z' and (rx - dx) ^ 2 + (ry - dy) ^ 2 <= r2) then
                if not item.random or math.random(item.random) == 1 then
                  local ivm = area:index(minp.x + dx, minp.y + dy, minp.z + dz)
                  data[ivm] = node[item.node]
                  p2data[ivm] = p2
                end
              end
            end
          end
        end

        write = true
      elseif item.act == 'sphere' then
        local r2 = (coords[2] / 2) ^ 2

        local rx = (min_x + max_x) / 2
        local ry = (coords[3] + coords[3] + coords[4] - 1) / 2
        local rz = (min_z + max_z) / 2

        min_x = math.max(min_x, 0)
        local min_y = math.max(coords[3], 0)
        min_z = math.max(min_z, 0)
        max_x = math.min(max_x, csize.x - 1)
        local max_y = math.min(coords[3] + coords[4] - 1, csize.y - 1)
        max_z = math.min(max_z, csize.z - 1)

        for dz = min_z, max_z do
          for dy = min_y, max_y do
            for dx = min_x, max_x do
              if (rz - dz) ^ 2 + (ry - dy) ^ 2 + (rx - dx) ^ 2 <= r2 then
                if not item.random or math.random(item.random) == 1 then
                  local ivm = area:index(minp.x + dx, minp.y + dy, minp.z + dz)
                  data[ivm] = node[item.node]
                  p2data[ivm] = p2
                end
              end
            end
          end
        end

        write = true
      end
    end
  end

	return write, wetness
end
