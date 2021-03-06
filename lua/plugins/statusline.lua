local M = {}

M.config = function()
  require "lualine".setup {
    options = {
      icons_enabled = true,
      theme = "gruvbox",
      component_separators = {"", ""},
      section_separators = {"", ""},
      disabled_filetypes = {}
    },
    sections = {
      lualine_a = {"mode"},
      lualine_b = {"branch"},
      lualine_c = {
        {
          "diagnostics",
          sources = {"nvim_lsp"},
          symbols = {error = " ", warn = " ", info = " ", hint = "ⓘ "},
          color_error = GruvboxRed,
          color_warn = GruvboxYellow,
          color_info = GruvboxCyan
        }
      },
      lualine_x = {"filetype"},
      lualine_y = {"progress"},
      lualine_z = {"location"}
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {"filename"},
      lualine_x = {"location"},
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {},
    extensions = {}
  }
end
return M
