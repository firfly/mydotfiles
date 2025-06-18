return {
    -- amongst your other plugins
    -- {'akinsho/toggleterm.nvim', version = "*", config = true}
    -- or
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        opts = {
            --[[ things you want to change go here]]

            size = 120,
            open_mapping = [[<c-\>]],
            hide_numbers = true,
            shade_filetypes = {},
            shade_terminals = true,
            shading_factor = 1,
            start_in_insert = true,
            insert_mappings = true,
            persist_size = true,
            direction = "vertical",
            close_on_exit = true,
            shell = vim.o.shell,
            float_opts = {
                border = "double",
                winblend = 3,
                width = 50,
                highlights = {
                    border = "Normal",
                    background = "Normal",
                },
            },
        },
    },
}
