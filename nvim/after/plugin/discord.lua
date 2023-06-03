-- The setup config table shows all available config options with their default values:
require("presence").setup({
	-- General options
	auto_update         = true,                       -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
	neovim_image_text   = "The One True Text Editor", -- Text displayed when hovered over the Neovim image
	main_image          = "file",                   -- Main image display (either "neovim" or "file")
	client_id           = "793271441293967371",       -- Use your own Discord application client id (not recommended)
	log_level           = nil,                        -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
	debounce_timeout    = 10,                         -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
	enable_line_number  = false,                      -- Displays the current line number instead of the current project
	blacklist           = {},                         -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
	buttons             = true,                      
	file_assets         = {},                        
	show_time           = true,                       -- Show the timer

	-- Rich Presence text options
	editing_text        = "Editing %s",          
	file_explorer_text  = "Browsing %s",              -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
	git_commit_text     = "Committing changes",       -- Format string rendered when committing changes in git (either string or function(filename: string): string)
	plugin_manager_text = "Managing plugins",         -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
	reading_text        = "Reading %s",           
	workspace_text      = "Working on %s",         
	line_number_text    = "Line %s out of %s",      
})
