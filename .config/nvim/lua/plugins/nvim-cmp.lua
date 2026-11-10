return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
    config = function()
      local cmp = require("cmp")

      cmp.setup({
        -- Desactivar autocompletado automático
        completion = {
          autocomplete = false,
        },

        -- Opciones del menú
        preselect = cmp.PreselectMode.None,

        mapping = cmp.mapping.preset.insert({
          -- Abrir sugerencias manualmente
          ["<C-Space>"] = cmp.mapping.complete(),

          -- Navegar por las sugerencias
          ["<C-n>"] = cmp.mapping.select_next_item(),
          ["<C-p>"] = cmp.mapping.select_prev_item(),

          -- Confirmar selección
          ["<CR>"] = cmp.mapping.confirm({
            select = false,
          }),

          -- Cerrar menú
          ["<C-e>"] = cmp.mapping.abort(),
        }),

        -- Fuentes de autocompletado
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "buffer" },
          { name = "path" },
        }),
      })
    end,
  },
}
