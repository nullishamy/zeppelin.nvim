local zeppelin = { }

local config = require('zeppelin.config')

function zeppelin.setup(opts)
    if (config.is_set()) then
        return
    end

    config.apply(opts)

    require('zeppelin.lsp').setup()
    require('zeppelin.mason').setup()
    require('zeppelin.treesitter').setup()
end

return zeppelin
