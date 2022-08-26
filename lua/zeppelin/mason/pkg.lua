local Pkg = require("mason-core.package")
local npm = require("mason-core.managers.npm")

return Pkg.new {
        name = "zeppelin-language-server",
        desc = [[ Zeppelin Tag language server]],
        homepage = "https://github.com/nullishamy/zeppelin-language-server",
        categories = { Pkg.Cat.LSP },
        languages = { Pkg.Lang.Zeppelin },
        install = npm.packages { "zeppelin-language-server", bin = { "zeppelin-language-server" } },
    }

