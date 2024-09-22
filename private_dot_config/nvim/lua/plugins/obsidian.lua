-- obsidian.nvim 
return {
	{"epwalsh/obsidian.nvim",
	version = "*",  -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
	-- event = {
	--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
	--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
	--   -- refer to `:h file-pattern` for more examples
	--   "BufReadPre path/to/my-vault/*.md",
	--   "BufNewFile path/to/my-vault/*.md",
	-- },
	opts = {
	  workspaces = {
		{
		  name = "personal",
		  path = "/Users/smaruyam/Library/Mobile Documents/iCloud~md~obsidian/Documents/simple",
		},
	  },
	 notes_subdir = "00 inbox",
         new_notes_location = "notes_subdir",
	 -- Optional, customize how note IDs are generated given an optional title.
 	 ---@param title string|?
  	 ---@return string
  	 note_id_func = function(title)
	    local suffix = ""
	    local currentTime = os.time()
	    local formattedDate = os.date("%Y-%m-%d", currentTime)
	    if title ~= nil then
	      -- If title is given, transform it into valid file name.
	      suffix = title:gsub("[^A-Za-z0-9-]", ""):lower()
	    else
	      -- If title is nil, just add 4 random uppercase letters to the suffix.
	      for _ = 1, 4 do
	        suffix = suffix .. string.char(math.random(65, 90))
	      end
	    end
	    return formattedDate .. " " .. suffix
	 end,
         preferred_link_style = "markdown",
	 use_advanced_uri = true,
	 open_app_foreground = true,
	 attachments = {
	 	img_folder = "20 attachments",
	 }
	},},
	{ "nvim-lua/plenary.nvim", lazy = true },
	{"hrsh7th/nvim-cmp", lazy = true},
}
