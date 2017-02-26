-- Geomoria mapgen.lua
-- Copyright Duane Robertson (duane@duanerobertson.com), 2017
-- Distributed under the LGPLv2.1 (https://www.gnu.org/licenses/old-licenses/lgpl-2.1.en.html)


local DEBUG
local max_depth = 31000
local geomoria_depth = geomoria_mod.geomoria_depth


-- This tables looks up nodes that aren't already stored.
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
    return
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

  local write = geomoria_mod.geomorph(minp, maxp, data, p2data, area, node)

  if write then
    duanes_collision_avoidance = true
    print('geomoria writes')

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
