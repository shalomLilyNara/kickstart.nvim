return{
    'goolord/alpha-nvim',
    event = "VimEnter",
    config = function ()
	local dashboard = require("alpha.themes.dashboard")
	dashboard.section.header.val = {
"▀████▀     █     ▀███▀███▀▀▀███▀████▀     ▄▄█▀▀▀█▄█ ▄▄█▀▀██▄ ▀████▄     ▄███▀███▀▀▀███",
"  ▀██     ▄██     ▄█   ██    ▀█  ██     ▄██▀     ▀███▀    ▀██▄ ████    ████   ██    ▀█",
"   ██▄   ▄███▄   ▄█    ██   █    ██     ██▀       ▀█▀      ▀██ █ ██   ▄█ ██   ██   █",
"    ██▄  █▀ ██▄  █▀    ██████    ██     ██        ██        ██ █  ██  █▀ ██   ██████",
"    ▀██ █▀  ▀██ █▀     ██   █  ▄ ██     ▄█▄       ██▄      ▄██ █  ██▄█▀  ██   ██   █  ▄",
"     ▄██▄    ▄██▄      ██     ▄█ ██    ▄███▄     ▄▀██▄    ▄██▀ █  ▀██▀   ██   ██     ▄█",
"      ██      ██     ▄███████████████████ ▀▀█████▀  ▀▀████▀▀ ▄███▄ ▀▀  ▄████▄██████████",
	}

	dashboard.section.buttons.val = {
	    dashboard.button("n", " New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("f", "󰈞  Find file", ":Telescope find_files<CR>"),
	    dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
	    dashboard.button("q", "Quit NVIM", ":qa<CR>"),
	}

	dashboard.section.footer.val = os.date("Today is %A, %B %d, %y")

	dashboard.section.header.opts.hl = "Include"
	dashboard.section.buttons.opts.hl = "Keyword"
	dashboard.section.footer.opts.hl = "Type"

	require("alpha").setup(dashboard.config)
      --require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end,
};
