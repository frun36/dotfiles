return {
  "lervag/vimtex",
  lazy = false,
  config = function()
    vim.g.vimtex_view_method = "zathura"

    vim.g.vimtex_compiler_method = "latexmk"
    vim.g.vimtex_compiler_latexmk = {
      build_dir = "target/",
      callback = 1,
      continuous = 1,
      executable = "latexmk",
      options = {
        "-lualatex",
        "-file-line-error",
        "-interaction=nonstopmode",
        "-synctex=1",
      },
    }
  end,
}

