vim.pack.add({"https://github.com/folke/snacks.nvim"})

require("snacks").setup({
  dashboard = {
    sections = {
      { section = 'header'},
      { section = 'keys', gap = 1, padding = 1 }
    }
  },
  picker = {},
  input = {},
  explorer = {},
  notifier = {enable = true}
})
vim.keymap.set("n", "<leader>e", function() Snacks.explorer() end, {desc = "File Explorer" })
vim.keymap.set("n", "<leader>sf", function() Snacks.picker.files() end, { desc = "Find files" })
vim.keymap.set("n", "<leader>sg", function() Snacks.picker.grep() end, { desc = "Live grep" })
vim.keymap.set("n", "<leader><space>", function() Snacks.picker.buffers() end, { desc = "Find buffers" })


-- 		vim.keymap.set(
-- 			"n",
-- 			"<leader><space>",
-- 			require("telescope.builtin").buffers,
-- 			{ desc = "[ ] Find existing buffers" }
-- 		)
-- 		vim.keymap.set("n", "<leader>/", function()
-- 			-- You can pass additional configuration to telescope to change theme, layout, etc.
-- 			require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
-- 				winblend = 0,
-- 				previewer = false,
-- 			}))
-- 		end, { desc = "[/] Fuzzily search in current buffer" })
--
-- 		vim.keymap.set("n", "<leader>gf", require("telescope.builtin").git_files, { desc = "Search [G]it [F]iles" })
-- 		vim.keymap.set("n", "<leader>sf", require("telescope.builtin").find_files, { desc = "[S]earch [F]iles" })
--
-- 		vim.keymap.set("n", "<leader>ss", function()
-- 			require("telescope.builtin").find_files({ hidden = true, no_ignore = true })
-- 		end, { desc = "[S]earch [S]ecret Files" })
--
-- 		vim.keymap.set("n", "<leader>sh", require("telescope.builtin").help_tags, { desc = "[S]earch [H]elp" })
-- 		vim.keymap.set(
-- 			"n",
-- 			"<leader>sw",
-- 			require("telescope.builtin").grep_string,
-- 			{ desc = "[S]earch current [W]ord" }
-- 		)
-- 		vim.keymap.set("n", "<leader>sg", require("telescope.builtin").live_grep, { desc = "[S]earch by [G]rep" })
-- 		vim.keymap.set("n", "<leader>sG", ":LiveGrepGitRoot<cr>", { desc = "[S]earch by [G]rep on Git Root" })
-- 		vim.keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })
-- 		vim.keymap.set("n", "<leader>sr", require("telescope.builtin").resume, { desc = "[S]earch [R]esume" })
-- 	end,
-- }
