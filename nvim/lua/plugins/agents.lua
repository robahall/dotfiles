return {
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = false,
    version = false, -- set this if you want to always pull the latest change
    opts = {
      -- add any opts here
      provider = "claude", -- Can be "claude", "openai", "azure", "gemini", "cohere", "copilot" or custom
      auto_suggestions = true, -- Enable auto suggestions
      providers = {
    	claude = {
      	endpoint = "https://api.anthropic.com",
      	model = "claude-3-5-sonnet-20241022",
      	timeout = 30000,
      	-- All request body fields moved to extra_request_body
      	extra_request_body = {
        	temperature = 0,
        	max_tokens = 4096,
      		},
	},
    	openai = {
      	endpoint = "https://api.openai.com/v1",
      	model = "gpt-4o",
      	timeout = 30000,
      	-- All request body fields moved to extra_request_body
      	extra_request_body = {
        	temperature = 0,
        	max_tokens = 4096,
      		},
    	},
    	-- Example of adding other providers
    	ollama = {
      	endpoint = "http://127.0.0.1:11434",
      	timeout = 30000,
      	extra_request_body = {
        	options = {
          		temperature = 0.75,
          		num_ctx = 20480,
          		keep_alive = "5m",
        		},
      		},
    	},
  	},
	behaviour = {
    		auto_suggestions = true, -- Experimental stage
    		auto_set_highlight_group = true,
    		auto_set_keymaps = true,
    		auto_apply_diff_after_generation = false,
    		support_paste_from_clipboard = false,
  	},
  	mappings = {
    	--- @class AvanteConflictMappings
    	diff = {
      		ours = "co",
      		theirs = "ct",
      		all_theirs = "ca",
      		both = "cb",
      		cursor = "cc",
      		next = "]x",
      		prev = "[x",
    		},
    	suggestion = {
      		accept = "<M-l>",
      		next = "<M-]>",
      		prev = "<M-[>",
      		dismiss = "<C-]>",
    	},
    	jump = {
      		next = "]]",
      		prev = "[[",
    	},
    	submit = {
      		normal = "<CR>",
      		insert = "<C-s>",
    	},
    	sidebar = {
      		switch_windows = "<Tab>",
      		reverse_switch_windows = "<S-Tab>",
    	},
  	},
  	hints = { enabled = true },
  	windows = {
    		position = "right", -- the position of the sidebar
    		wrap = true, -- similar to vim.o.wrap
    		width = 30, -- default % based on available width
    		sidebar_header = {
      			align = "center", -- left, center, right for title
      			rounded = true,
    		},
  		},
  	highlights = {
    		---@type AvanteConflictHighlights
    		diff = {
      		current = "DiffText",
      		incoming = "DiffAdd",
    		},
  	},
	},
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = "make",
    -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
    dependencies = {
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-treesitter/nvim-treesitter",
      --- The below dependencies are optional,
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      "zbirenbaum/copilot.lua", -- for providers='copilot'
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            use_absolute_path = true,
          },
        },
      },
      {
        -- Make sure to set this up properly if you have lazy=true
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  }
}
