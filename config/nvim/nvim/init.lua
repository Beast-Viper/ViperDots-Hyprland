vim.g.base46_cache = vim.fn.stdpath "data" .. "/nvchad/base46/"
vim.g.mapleader = " "

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
    config = function()
      require "options"
    end,
  },

  {
    'xiyaowong/transparent.nvim',
    config = function()
      require("transparent").setup({
        enable = true,
        groups = {
          'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
          'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
          'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
          'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
          'EndOfBuffer',
        },
        extra_groups = {
          "NormalFloat",
          "FloatBorder",
          "NormalNC",
        },
        exclude_groups = {},
      })
      vim.cmd("highlight Normal guifg=#ffffff guibg=#1e1e2e ctermbg=NONE")
    end
  },

  { import = "plugins" },
}, lazy_config)

dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)

require('toggleterm').setup {}

function CompileAndRun()
    local file_name = vim.fn.expand('%:t:r')
    local file_path = vim.fn.expand('%:p')
    local file_dir = vim.fn.expand('%:p:h')

    vim.cmd('cd ' .. file_dir)

    local binary_path = file_dir .. '/' .. file_name
    if vim.fn.filereadable(binary_path) == 1 then
        os.remove(binary_path)
        print('Deleted existing binary file: ' .. file_name)
    end

    local compile_command = 'clang++ ' .. file_path .. ' -o ' .. file_name
    local compile_output = vim.fn.system(compile_command)

    if compile_output == '' then
        vim.cmd(':TermExec cmd="clear && ./' .. file_name .. '"')
    else
        print(compile_output)
    end

    vim.cmd('cd -')
end

vim.api.nvim_set_keymap('n', '<S-r>', ':lua CompileAndRun()<CR>', { noremap = true, silent = true })

require('auto-session').setup()

vim.cmd('autocmd VimLeave * :SaveSession')

vim.cmd[[set background=dark]]
vim.cmd[[highlight Normal ctermbg=NONE guibg=NONE]]
