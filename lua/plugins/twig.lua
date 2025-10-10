return {
  -- No plugin needed, just a config tweak
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- Ensure HTML Treesitter parser is installed
    opts.ensure_installed = vim.tbl_extend("force", opts.ensure_installed or {}, { "html" })
  end,
  config = function()
    -- Treat .twig files as HTML
    vim.filetype.add({
      extension = {
        twig = "html",
      },
    })
  end,
}
