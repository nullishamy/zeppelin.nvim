local zeppelin = { }

local config = require('zeppelin.config')

function zeppelin.setup(opts)
    if (config.is_set()) then
        return
    end

    config.apply(opts)

    local cfg = config.get()

    if cfg.lspconfig.enable  then require('zeppelin.lsp').setup() end
    if cfg.mason.enable      then require('zeppelin.mason').setup() end
    if cfg.treesitter.enable then require('zeppelin.treesitter').setup() end
end

return zeppelin
