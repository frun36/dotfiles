return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "echasnovski/mini.icons",
  },

  ft = { "markdown" },

  keys = {
    {
      "<leader>z",
      "<cmd>RenderMarkdown toggle<CR>",
      desc = "Toggle markdown render",
    },
  },

  opts = {
    heading = {
      position = "inline",
      icons = {
        "󰼏 ", "󰼐 ", "󰼑 ", "󰼒 ", "󰼓 ", "󰼔 ",
      },
      foregrounds = {
        "RenderMarkdownH1",
        "RenderMarkdownH2",
        "RenderMarkdownH3",
        "RenderMarkdownH4",
        "RenderMarkdownH5",
        "RenderMarkdownH6",
      },
      backgrounds = {
        "RenderMarkdownH1Bg",
        "RenderMarkdownH2Bg",
        "RenderMarkdownH3Bg",
        "RenderMarkdownH4Bg",
        "RenderMarkdownH5Bg",
        "RenderMarkdownH6Bg",
      },
    },
  },

  config = function(_, opts)
    require("render-markdown").setup(opts)

    local colors = {
      { fg = "#e67e80", bg = "#493b40" },-- czerwony
      { fg = "#e69875", bg = "#59464c" },-- pomarańczowy
      { fg = "#dbbc7f", bg = "#45443c" },-- żółty
      { fg = "#a7c080", bg = "#3c4841" },-- żółtozielony
      { fg = "#7fbbb3", bg = "#384b55" },-- niebieski
      { fg = "#d699b6", bg = "#463f48" },-- fioletowy
    }

    local function set_heading_colors()
      for level, color in ipairs(colors) do
        vim.api.nvim_set_hl(0, "RenderMarkdownH" .. level, {
          fg = color.fg,
          bold = true,
        })

        vim.api.nvim_set_hl(0, "RenderMarkdownH" .. level .. "Bg", {
          fg = color.fg,
          bg = color.bg,
          bold = true,
        })
      end
    end

    set_heading_colors()

    vim.api.nvim_create_autocmd("ColorScheme", {
      group = vim.api.nvim_create_augroup(
        "RenderMarkdownHeadingColors",
        { clear = true }
      ),
      callback = set_heading_colors,
    })
  end,
}
