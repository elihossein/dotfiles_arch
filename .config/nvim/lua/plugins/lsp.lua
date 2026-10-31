return {
    {
        "neovim/nvim-lspconfig",
        config = function()

            -- Python
            vim.lsp.config("pylsp", {
                settings = {
                    pylsp = {
                        plugins = {
                            pyflakes = {
                                enabled = true,
                            },
                            pycodestyle = {
                                enabled = true,
                            },
                            mccabe = {
                                enabled = false,
                            },
                            pylint = {
                                enabled = false,
                            },
                        },
                    },
                },
            })

            -- C
            vim.lsp.config("clangd", {})

            -- Activar servidores
            vim.lsp.enable("pylsp")
            vim.lsp.enable("clangd")

        end,
    },
}
