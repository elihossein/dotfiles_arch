return {
  {
    "nvim-lualine/lualine.nvim",

    opts = {
      options = {
        globalstatus = true,
        component_separators = "",
        section_separators = "",
      },
      sections = {
        lualine_b = {
          { "branch", icon = "\u{f418}" },
          {
            "diff",
            symbols = {
              added    = "\u{f457} ",
              modified = "\u{f459} ",
              removed  = "\u{f458} ",
            },
          },
          {
            "diagnostics",
            symbols = {
              error = "\u{f057} ",
              warn  = "\u{f071} ",
              info  = "\u{f05a} ",
              hint  = "\u{f0eb} ",
            },
          },
        },
      },
    },
  },
}
