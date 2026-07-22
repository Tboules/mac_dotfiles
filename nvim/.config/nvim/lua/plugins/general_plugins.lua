---@param repo string
---@return string
local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add({
  gh "christoomey/vim-tmux-navigator",
  gh "JoosepAlviste/nvim-ts-context-commentstring",
  gh "lukas-reineke/indent-blankline.nvim",
  gh "EdenEast/nightfox.nvim"
})

-- THEME
require("nightfox").setup({
  options = {
    transparent = true,
  },
})
vim.cmd.colorscheme("nightfox")
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })

-- Indent Blank Line
require("ibl").setup()
