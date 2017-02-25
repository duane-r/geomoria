-- Geomoria init.lua
-- Copyright Duane Robertson (duane@duanerobertson.com), 2017
-- Distributed under the LGPLv2.1 (https://www.gnu.org/licenses/old-licenses/lgpl-2.1.en.html)

geomoria_mod = {}
geomoria_mod.version = "1.0"
geomoria_mod.path = minetest.get_modpath(minetest.get_current_modname())
geomoria_mod.world = minetest.get_worldpath()
geomoria_mod.plans = {}
geomoria_mod.plans_keys = {}
geomoria_mod.geomoria_depth = -8


geomoria_mod.default_exits = {
  {act = 'fill', node = 'air', coords = {0, 0, 21, 22, 19, 20}},
  {act = 'fill', node = 'air', coords = {0, 0, 21, 22, 39, 40}},
  {act = 'fill', node = 'air', coords = {0, 0, 21, 22, 59, 60}},
  {act = 'fill', node = 'air', coords = {79, 79, 21, 22, 19, 20}},
  {act = 'fill', node = 'air', coords = {79, 79, 21, 22, 39, 40}},
  {act = 'fill', node = 'air', coords = {79, 79, 21, 22, 59, 60}},
  {act = 'fill', node = 'air', coords = {19, 20, 21, 22, 0, 0}},
  {act = 'fill', node = 'air', coords = {39, 40, 21, 22, 0, 0}},
  {act = 'fill', node = 'air', coords = {59, 60, 21, 22, 0, 0}},
  {act = 'fill', node = 'air', coords = {19, 20, 21, 22, 79, 79}},
  {act = 'fill', node = 'air', coords = {39, 40, 21, 22, 79, 79}},
  {act = 'fill', node = 'air', coords = {59, 60, 21, 22, 79, 79}},
}


function geomoria_mod.clone_node(name)
	if not (name and type(name) == 'string') then
		return
	end

	local node = minetest.registered_nodes[name]
	local node2 = table.copy(node)
	return node2
end


dofile(geomoria_mod.path .. "/plans.lua")

for k, v in pairs(geomoria_mod.plans) do
  geomoria_mod.plans_keys[#geomoria_mod.plans_keys+1] = k
end

dofile(geomoria_mod.path .. "/mapgen.lua")
