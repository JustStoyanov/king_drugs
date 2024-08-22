local modules <const>, resource <const> = {
    'main',
    'misc'
}, cache.resource;

local globalVarName <const>, modsPath <const> = select(2, string.strsplit('_', resource)), ('@%s/code/modules'):format(resource);
_ENV[globalVarName] = {
    modsPath = modsPath
};

CreateThread(function()
    local defaultPath <const> = ('%s/%s/%s'):format(modsPath, '%s', lib.context);
    for i = 1, #modules do
        lib.require(defaultPath:format(modules[i]));
    end

    for name, func in pairs(_ENV[globalVarName]) do
        if type(func) == 'function' then
            exports(name, func);
        end
    end
end);