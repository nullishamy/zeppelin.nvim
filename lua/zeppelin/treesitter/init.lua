local treesitter = { }

function treesitter.setup()
    local parsers = require("nvim-treesitter.parsers").get_parser_configs()
    parsers.zeppelin = {
      install_info = {
        url = "https://github.com/nullishamy/tree-sitter-zeppelin",
        files = { "src/parser.c" },
        branch = "master",
        generate_requires_npm = false,
        requires_generate_from_grammar = false,
      },
      filetype = { 'zeppelin' }
    }
end

return treesitter
