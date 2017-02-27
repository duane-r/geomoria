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


geomoria_mod.generate_ores = minetest.setting_getbool('geomoria_generate_ores')
if geomoria_mod.generate_ores == nil then
	geomoria_mod.generate_ores = false
end

geomoria_mod.add_fissures = minetest.setting_getbool('geomoria_add_fissures')
if geomoria_mod.add_fissures == nil then
	geomoria_mod.add_fissures = true
end


geomoria_mod.default_exits = {
  {act = 'fill', node = 'air', coords = {0, 1, 21, 3, 19, 2}},
  {act = 'fill', node = 'air', coords = {0, 1, 21, 3, 39, 2}},
  {act = 'fill', node = 'air', coords = {0, 1, 21, 3, 59, 2}},
  {act = 'fill', node = 'air', coords = {79, 1, 21, 3, 19, 2}},
  {act = 'fill', node = 'air', coords = {79, 1, 21, 3, 39, 2}},
  {act = 'fill', node = 'air', coords = {79, 1, 21, 3, 59, 2}},
  {act = 'fill', node = 'air', coords = {19, 2, 21, 3, 0, 1}},
  {act = 'fill', node = 'air', coords = {39, 2, 21, 3, 0, 1}},
  {act = 'fill', node = 'air', coords = {59, 2, 21, 3, 0, 1}},
  {act = 'fill', node = 'air', coords = {19, 2, 21, 3, 79, 1}},
  {act = 'fill', node = 'air', coords = {39, 2, 21, 3, 79, 1}},
  {act = 'fill', node = 'air', coords = {59, 2, 21, 3, 79, 1}},
}


function geomoria_mod.clone_node(name)
	if not (name and type(name) == 'string') then
		return
	end

	local node = minetest.registered_nodes[name]
	local node2 = table.copy(node)
	return node2
end


local node = geomoria_mod.clone_node('default:stone')
node.walkable = false
minetest.register_node('geomoria:false_wall', node)


dofile(geomoria_mod.path .. "/plans.lua")

for k, v in pairs(geomoria_mod.plans) do
  geomoria_mod.plans_keys[#geomoria_mod.plans_keys+1] = k
end

dofile(geomoria_mod.path .. "/mapgen.lua")
