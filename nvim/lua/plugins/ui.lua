return {
  {
    "akinsho/bufferline.nvim", 
    version="*", 
    dependencies='nvim-tree/nvim-web-devicons',
    config = function()
	    vim.opt.termguicolors = true
	    require('bufferline').setup{
	      options = {
		offsets={{
			file_type = 'neo-tree',
			text = 'Neo-Tree',
			highlight = 'Directory',
			text_align = 'left'
		}}
	}} end
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
    },
    config = function()
      local wk = require("which-key")
      
      -- Register your leader key mappings with descriptions
      wk.register({
        f = {
          name = "File", -- group name
          n = { ":enew<CR>", "New file" },
          s = { ":w<CR>", "Save file" },
          S = { ":wa<CR>", "Save all" },
          c = { ":bd<CR>", "Close buffer" },
        },
        a = {
          name = "AI/Avante",
          a = { function() require("avante.api").ask() end, "Ask AI" },
          r = { function() require("avante.api").refresh() end, "Refresh" },
          e = { function() require("avante.api").edit() end, "Edit" },
        },
        p = {
          name = "Plugins",
          u = { ":Lazy update<CR>", "Update plugins" },
          s = { ":Lazy sync<CR>", "Sync plugins" },
          l = { ":Lazy<CR>", "Open Lazy UI" },
        },
      }, { prefix = "<leader>" })
    end,
  }
}
