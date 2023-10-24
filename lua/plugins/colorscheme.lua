return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      no_bold = true,
      term_colors = true,
      color_overrides = {
        mocha = {
          base = "#0f1119",
          mantle = "#090b10",
        },
      },
      highlight_overrides = {
        all = function(colors)
          return {
            ["NvimTreeIndentMarker"] = { fg = "#232637" },
            -- indent-blankline
            ["IndentBlanklineChar"] = { fg = "#232637" },
            ["IndentBlanklineContextChar"] = { fg = "#464B5D" },
            -- treesitter
            ["@constructor.tsx"] = { fg = colors.yellow },
            ["@tag.tsx"] = { fg = colors.red },
            ["@string.scss"] = { fg = colors.orange },
            ["@type.definition.scss"] = { fg = colors.blue },
            -- SCSS
            ["@property.scss"] = { fg = colors.text },
            ["@property.id.scss"] = { fg = colors.blue },
            ["@property.class.scss"] = { fg = colors.red },
            ["@type.scss"] = { fg = colors.orange },
            ["@type.tag.scss"] = { fg = colors.mauve },
            ["@string.plain.scss"] = { fg = colors.peach },
            ["@number.scss"] = { fg = colors.peach },
            -- treesitter-context
            ["TreesitterContext"] = {
              bg = "#1d2030",
            },
            ["TreesitterContextLineNumber"] = { fg = colors.overlay0 },
          }
        end,
      },
      integrations = {
        alpha = true,
        cmp = true,
        flash = true,
        gitsigns = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        lsp_trouble = true,
        mason = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        noice = true,
        notify = true,
        neotree = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        which_key = true,
      },
    },
  },
  -- Configure LazyVim to load catppuccin
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
