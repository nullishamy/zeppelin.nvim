local lsp = { }

function lsp.setup()
    require('lspconfig.configs')['zeppelin_language_server'] = {
      name = "zeppelin-language-server",
      default_config = {
        cmd = { "zeppelin-language-server", "--stdio" },
        root_dir = require('lspconfig.util').root_pattern('.git'),
        single_file_support = true,
        on_new_config = function (new_config, new_root_dir)
        end,
        filetypes = { "zeppelin" },
        settings = {
          maxNumberOfProblems = 100,
        }
      }
    }
end

return lsp
