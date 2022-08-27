local config = { }

local DEFAULTS = {
    treesitter = {
        enable = true;
    },
    mason = {
        enable = true;
    },
    lspconfig = {
        enable = true;
    }
}

local tbl = require('plenary.tbl')

function config.apply(opts)
    assert(config.values == nil, 'config has already been set')
    config.values = tbl.apply_defaults(opts, DEFAULTS)
end

function config.is_set()
    return config.values ~= nil
end

function config.get()
    assert(config.is_set(), 'config was not set')
    return config.values
end

return config
