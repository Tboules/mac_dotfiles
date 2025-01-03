return {
	"epwalsh/obsidian.nvim",
	version = "*",
	lazy = false,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
		"nvim-telescope/telescope.nvim",
	},
	opts = {
		workspaces = {
			{
				name = "Gnosis",
				path = "~/Documents/vault/gnosis/",
			},
		},
		templates = {
			folder = "Extras/templates",
			date_format = "%Y-%m-%d",
			time_format = "%H:%M",
		},
		daily_notes = {
			-- TODO replace 2024 with 2025
			folder = "Calendar/2025/daily",
			template = "daily_note.md",
		},
		completion = {
			nvim_cmp = true,
		},
		disable_frontmatter = true,

		---@param url string
		follow_url_func = function(url)
			vim.fn.jobstart({ "open", url })
		end,

		-- New Note
		notes_subdir = "Cards/",
		new_notes_location = "notes_subdir",

		---@param title string|?
		---@return string
		note_id_func = function(title)
			if title ~= nil then
				return title
			else
				return "untitled_note"
			end
		end,
		ui = {
			checkboxes = {
				[" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
				["x"] = { char = "", hl_group = "ObsidianDone" },
			},
		},
	},
}
