local mason = { }

function mason.setup()
    require('mason-registry.index')['zeppelin-language-server'] = 'zeppelin.mason.pkg'
end

return mason
