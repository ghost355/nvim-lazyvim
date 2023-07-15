-- Disable vitrual_text diagnostic
return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      virtual_text = false,
    },
  },
}
