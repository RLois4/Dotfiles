return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!

  {
    "williamboman/nvim-lsp-installer",
    config = function()
      require("nvim-lsp-installer").setup({
        automatic_installation = true,
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "preservim/nerdtree",
    cmd = "NERDTreeToggle",
    config = function()
    end
  },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
    end
  },

  {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      vim.cmd [[
      highlight DashboardHeader guifg=#f9fF3F gui=bold
        highlight DashboardCenter guifg=#32CD32
        highlight DashboardFooter guifg=#4682B4
        highlight DashboardShortcut guifg=#FFD700
      ]]
      require('dashboard').setup {
        theme = 'doom',
        config = {
          header = {
            "",
            "           ██████              ",
            "       ████▒▒▒▒▒▒██████        ",
            "       ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒██      ",
            "     ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██    ",
            "  ██▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒       ",
            "  ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▓▓▓▓   ",
            "  ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▒▒▓▓   ",
            "██▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒    ██ ",
            "██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██ ",
            "██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██ ",
            "██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██ ",
            "██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██ ",
            "██▒▒██▒▒▒▒▒▒██▒▒▒▒▒▒▒▒██▒▒▒▒██ ",
            " ████  ██▒▒██  ██▒▒▒▒██  ██▒▒██",
            " ██      ██      ████      ████",
            "",
            "",
            "",
          },
          center = {
            { icon = '  ', desc = ' New File', key = 'n', action = 'ene | startinsert' },
            { icon = '  ', desc = ' Open Recent Files', key = 'r', action = 'Telescope oldfiles' },
            { icon = '󰱼  ', desc = ' Search For Files', key = 'f', action = 'Telescope find_files' },
            { icon = '  ', desc = ' Configuration', key = 'c', action = 'e ~/.config/nvim/init.lua' },
            { icon = '  ', desc = ' Exit', key = 'q', action = 'qa' },
          },
          footer = { "󱓟 Coding the Future!" },
        }
      }
    end
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
        "html", "css",
        "c", "cpp", "asm", "python", "sql", "java", "javascript", "go", "kotlin",
  		},
    },
  },
  {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
	  require("tokyonight").setup({
	    style = "night",
	    transparent = true,
	    -- terminal_colors = true,
      styles = {
  	    sidebars = "dark",
	      floats = "dark",
	      comments = { italic = true },
	      keywords = { italic = true },
	      functions = { italic = true },
	      variables = { italic = true },
  	  },
	  })
	  vim.cmd[[colorscheme tokyonight]]
	end,
  }, 
}
