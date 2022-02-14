-- if not set, the folder name will be used
name    = 'Atomontage'
-- list of matched words
--words   = {"Input:%w+"} --if I add these words file detection breaks and they dont work either
-- list or matched file names. `.lua`, `.dll` and `.so` only
files   = {'Sky%.lua', "Camera Controller%.lua", "Brush%.lua", "Voxel Inspector%.lua"}
-- lsit of settings to be changed
configs = {
    {
        key    = 'Lua.runtime.version',
        action = 'set',
        value  = 'Lua 5.3',
    },
    {
        key    = 'Lua.runtime.builtin',
        action = 'prop',
        prop   = 'io',
        value  = 'disable',
    },
    {
        key    = 'Lua.runtime.builtin',
        action = 'prop',
        prop   = 'os',
        value  = 'disable',
    },
}

--[[
for _, name in ipairs {'global2', 'global3', 'global4'} do
    configs[#configs+1] = {
        key    = 'Lua.diagnostics.globals',
        action = 'add',
        value  = name,
    }
end
]]