--not used yet, but maybe copy into lua lang serv /meta/3rd ?

-- if not set, the folder name will be used
name    = 'Atomontage'
-- list of matched words
words   = {'thisIsAnExampleWord%.ifItExistsInFile%.thenTryLoadThisLibrary'}
-- list or matched file names. `.lua`, `.dll` and `.so` only
--files   = {'thisIsAnExampleFile%.ifItExistsInWorkSpace%.thenTryLoadThisLibrary%.lua'}
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