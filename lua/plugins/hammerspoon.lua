return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              -- Ignore some false-positive diagnostics for neovim lua config
              disable = { "redundant-parameter", "duplicate-set-field" },
            },
            hint = true
                and {
                  -- https://github.com/LuaLS/lua-language-server/wiki/Settings#hint
                  enable = true, -- inlay hints
                  paramType = true, -- Show type hints at the parameter of the function.
                  paramName = "Literal", -- Show hints of parameter name (literal types only) at the function call.
                  arrayIndex = "Auto", -- Show hints only when the table is greater than 3 items, or the table is a mixed table.
                  setType = true, -- Show a hint to display the type being applied at assignment operations.
                }
              or nil,
            completion = { callSnippet = "Disable" },
            workspace = {
              maxPreload = 8000,

              -- Do not prompt "Do you need to configure your work environment as ..."
              checkThirdParty = false,

              -- If running as a single file on root_dir = ./dotfiles,
              -- this will be in duplicate with library paths. Do not scan invalid lua libs
              ignoreDir = { ".*", "vim/plugged", "config/nvim", "nvim/lua" },
              library = (function()
                local library = {}
                if vim.fn.has("mac") > 0 then
                  -- http://www.hammerspoon.org/Spoons/EmmyLua.html
                  -- Add a line `hs.loadSpoon('EmmyLua')` on the top in ~/.hammerspoon/init.lua
                  library[vim.fn.expand("$HOME/.hammerspoon/Spoons/EmmyLua.spoon/annotations")] = true
                end
                return library
              end)(),
            },
          },
        },
      },
    },
  },
}
