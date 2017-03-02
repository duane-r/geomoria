-- Geomoria mapgen.lua
-- Copyright Duane Robertson (duane@duanerobertson.com), 2017
-- Distributed under the LGPLv2.1 (https://www.gnu.org/licenses/old-licenses/lgpl-2.1.en.html)


local DEBUG
local max_depth = 31000
local geomoria_depth = geomoria_mod.geomoria_depth


-- This table looks up nodes that aren't already stored.
local node = setmetatable({}, {
	__index = function(t, k)
		if not (t and k and type(t) == 'table') then
			return
		end

		t[k] = minetest.get_content_id(k)
		return t[k]
	end
})


local data = {}
local p2data = {}


local function generate(p_minp, p_maxp, seed)
	if not (p_minp and p_maxp and seed) then
		return
	end

	local minp, maxp = p_minp, p_maxp
  local avg = (minp.y + maxp.y) / 2
  if avg < (geomoria_depth - 1) * 80 - 32 or avg > geomoria_depth * 80 - 32 then
    if not DEBUG then
      return
    end
  end

	local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
	if not (vm and emin and emax) then
		return
	end

	vm:get_data(data)
  p2data = vm:get_param2_data()
	local heightmap
	local area = VoxelArea:new({MinEdge = emin, MaxEdge = emax})
	local csize = vector.add(vector.subtract(maxp, minp), 1)

  local fissure_noise, damage_noise
  if geomoria_mod.add_fissures then
    damage_noise = minetest.get_perlin_map({offset = 0, scale = 0.5, seed = -6827, spread = {x = 200, y = 200, z = 200}, octaves = 3, persist = 0.8, lacunarity = 2}, csize):get2dMap_flat({x=minp.x, y=minp.z})
    fissure_noise = minetest.get_perlin_map({offset = 0, scale = 1, seed = -8402, spread = {x = 8, y = 64, z = 8}, octaves = 3, persist = 0.5, lacunarity = 2}, csize):get3dMap_flat(minp)
  end

  local write, wetness = geomoria_mod.geomorph(minp, maxp, data, p2data, area, node)
  if wetness == 0 then
    wetness = 20
  else
    wetness = math.floor(20 - (math.abs(wetness) ^ 0.5 * (math.abs(wetness) / wetness)))
  end
  wetness = wetness <= 2 and 2 or wetness

  if not DEBUG and fissure_noise then
    local index = 1
    local index2 = 1
    for z = minp.z, maxp.z do
      for y = minp.y, maxp.y do
        local ivm = area:index(minp.x, y, z)
        local taper = 0
        --local taper = math.abs(30 - (y - minp.y)) / 50 - 0.7
        local dy = y - minp.y
        if dy < 20 then
          taper = (20 - dy) / 40
        elseif dy > 59 then
          taper = (dy - 59) / 40
        end

        for x = minp.x, maxp.x do
          local damage = fissure_noise[index] - damage_noise[index2 + x - minp.x] - taper
          if damage > geomoria_mod.damage_level then
            if data[ivm] ~= node['default:water_source'] and data[ivm] ~= node['default:water_source'] then
              data[ivm] = node['air']
            end
          elseif (data[ivm] == node['default:stone'] or data[ivm] == node['default:stone_block']) and damage > geomoria_mod.damage_level - 0.5 then
            if wetness and math.random(wetness) == 1 then
              data[ivm] = node['default:mossycobble']
            else
              data[ivm] = node['default:cobble']
            end
          end

          ivm = ivm + 1
          index = index + 1
        end
      end
      index2 = index2 + csize.x
    end
  end

  if write then
    duanes_collision_avoidance = true

    vm:set_data(data)
    vm:set_param2_data(p2data)

    if DEBUG then
      vm:set_lighting({day = 14, night = 14})
    else
      vm:set_lighting({day = 0, night = 0}, minp, maxp)
      vm:calc_lighting()
    end
    vm:update_liquids()
    vm:write_to_map()
  end
end


if geomoria_mod.path then
	dofile(geomoria_mod.path .. "/geomorph.lua")
end


local function pgenerate(...)
	local status, err = pcall(generate, ...)
	--local status, err = true
	--generate(...)
	if not status then
		print('Geomoria: Could not generate terrain:')
		print(dump(err))
		collectgarbage("collect")
	end
end


minetest.register_on_generated(pgenerate)
