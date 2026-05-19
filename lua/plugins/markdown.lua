return {
  {
    "preservim/vim-markdown",
    dependencies = { "godlygeek/tabular" },
    ft = { "markdown" },
    config = function()
      vim.g.vim_markdown_folding_disabled = 1
      vim.g.vim_markdown_conceal = 0
      vim.g.vim_markdown_conceal_code_blocks = 0
      vim.keymap.set(
        "n",
        "<leader>mp",
        function()
          local file = vim.fn.expand("%:p")
          os.execute(string.format("grip '%s' -b >/dev/null 2>&1 &", file))
        end,
        { noremap = true, silent = true, desc = "Preview markdown in browser" }
      )
    end,
  },
}
