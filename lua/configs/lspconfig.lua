-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "nixd",
  "lua_ls",
  "postgres_lsp",
  "bufls",
  "taplo",
  -- hyprls --not ready until next version of nixos
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- lsps with specific config
do
  lspconfig["gopls"].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
    settings = {
      gopls = {
        analyses = {
          shadow = true,
          unusedvariable = true,
          useany = true,
        },
        gofumpt = true,
      },
    },
  }
end
