return {
	"obsidian-nvim/obsidian.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	--@module 'obsidian'
	--@type obsidian.config
	opts = {
		legacy_commands = false,
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
			folder = "Calendar/2025/daily",
			template = "daily_note.md",
		},
		frontmatter = {
			enabled = false,
		},
		checkbox = {
			order = {
				" ",
				"x",
				">",
			},
		},

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
	},
}
