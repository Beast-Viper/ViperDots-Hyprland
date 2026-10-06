local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local servers = { "html", "cssls", "taplo", "hyprls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  -- 1. Ensure the config table exists so we don't overwrite Neovim's built-in defaults
  vim.lsp.config[lsp] = vim.lsp.config[lsp] or {}
  
  -- 2. Inject NvChad's handlers
  vim.lsp.config[lsp].on_attach = on_attach
  vim.lsp.config[lsp].on_init = on_init
  vim.lsp.config[lsp].capabilities = capabilities
  
  -- 3. Enable the server natively
  vim.lsp.enable(lsp)
end

-- typescript
vim.lsp.config.ts_ls = vim.lsp.config.ts_ls or {}
vim.lsp.config.ts_ls.on_attach = on_attach
vim.lsp.config.ts_ls.on_init = on_init
vim.lsp.config.ts_ls.capabilities = capabilities

vim.lsp.enable("ts_ls")
