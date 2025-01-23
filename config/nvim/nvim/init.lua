vim.g.base46_cache = vim.fn.stdpath "data" .. "/nvchad/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
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

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)

-- Load the plugin and set its configuration
require('toggleterm').setup {
}

function CompileAndRun()
    local file_name = vim.fn.expand('%:t:r') -- Get the current file name without extension
    local file_path = vim.fn.expand('%:p') -- Get the full path of the current file
    local file_dir = vim.fn.expand('%:p:h') -- Get the directory of the current file

    -- Change to the directory of the current file
    vim.cmd('cd ' .. file_dir)

    -- Check if the binary file already exists
    local binary_path = file_dir .. '/' .. file_name
    if vim.fn.filereadable(binary_path) == 1 then
        os.remove(binary_path) -- Delete the existing binary file
        print('Deleted existing binary file: ' .. file_name)
    end

    -- Compile the C++ code
    local compile_command = 'clang++ ' .. file_path .. ' -o ' .. file_name
    local compile_output = vim.fn.system(compile_command)

    -- Check if compilation was successful
    if compile_output == '' then
        -- Open a new terminal buffer and run the compiled program
        vim.cmd(':TermExec cmd="clear && ./' .. file_name .. '"')
    else
        -- Print compilation error if any
        print(compile_output)
    end

    -- Change back to the original directory
    vim.cmd('cd -')
end

-- Create a keybinding to call the CompileAndRun function
vim.api.nvim_set_keymap('n', '<S-r>', ':lua CompileAndRun()<CR>', { noremap = true, silent = true })


-- Enable auto-session
require('auto-session').setup()

-- Automatically save session on exit
vim.cmd('autocmd VimLeave * :SaveSession')

vim.cmd[[set background=dark]]  -- or light
vim.cmd[[highlight Normal ctermbg=NONE guibg=NONE]]

require('lazy').setup({
    {
        'xiyaowong/transparent.nvim',
        config = function()
            require("transparent").setup({
                enable = true, -- Enable the plugin
                groups = {
                    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
                    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
                    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
                    'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
                    'EndOfBuffer',
  },
                extra_groups = { -- Additional groups to make transparent
                    "NormalFloat",
                    "FloatBorder",
                    "NormalNC",
                },
                exclude_groups = {}, -- Groups to exclude from transparency
            })
            -- Set background to transparent
            vim.cmd("highlight Normal guifg=#ffffff guibg=#1e1e2e ctermbg=NONE")
        end
    },
})
