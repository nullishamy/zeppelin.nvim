# zeppelin.nvim

This plugin adds configs to Mason, Treesitter, and lspconfig for the Zeppelin LSP and parser.
This does not install the components, but rather allows other tools to install them.

## Dependencies
- plenary.nvim
- nvim-treesitter (for the treesitter module)
- mason           (for the mason module)
- lspconfig       (for the lspconfig module)

## Configuration

Below are the defaults

```lua
require('zeppelin').setup({
    treesitter = {
        enable = true; -- Whether to enable the treesitter module
    },
    mason = {
        enable = true; -- Whether to enable the mason module
    },
    lspconfig = {
        enable = true; -- Whether to enable the lspconfig module
    }
})
```
