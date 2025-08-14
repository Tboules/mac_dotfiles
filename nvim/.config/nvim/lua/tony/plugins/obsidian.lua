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
			folder = "Calendar/2025/daily",
			template = "daily_note.md",
		},
		completion = {
			nvim_cmp = true,
		},
		disable_frontmatter = true,

		mappings = {
			["nn"] = {
				action = function()
					local template_path = "~/Documents/vault/gnosis/Extras/templates/encounter_template.md"
					local client = require("obsidian").get_client()
					if not client then
						vim.notify("client unavailable", vim.log.levels.ERROR)
						return
					end

					local note_name = vim.fn.input("New Note Name: ")
					if note_name == nil or note_name == "" then
						vim.notify("A name for the note must be provided", vim.log.levels.ERROR)
						return
					end

					local note = client.create_note(client, { title = note_name, template = template_path })
					client.open_note(client, note)
				end,
				opts = { noremap = false },
			},
			["gf"] = {
				action = function()
					return require("obsidian").util.gf_passthrough()
				end,
				opts = { noremap = false, expr = true, buffer = true },
			},
			-- Toggle check-boxes.
			["<leader>ch"] = {
				action = function()
					return require("obsidian").util.toggle_checkbox()
				end,
				opts = { buffer = true },
			},
			-- Smart action depending on context, either follow link or toggle checkbox.
			["<cr>"] = {
				action = function()
					return require("obsidian").util.smart_action()
				end,
				opts = { buffer = true, expr = true },
			},
		},

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
