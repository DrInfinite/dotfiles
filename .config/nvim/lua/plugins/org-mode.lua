return {
    {
        "nvim-orgmode/orgmode",
        event = "VeryLazy",
        ft = { "org" },
        config = function()
            -- Setup orgmode
            require("orgmode").setup({
                org_agenda_files = "~/Documents/org/**/*",
                org_default_notes_file = "~/Documents/org/index.org",
            })

            -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
            -- add ~org~ to ignore_install
            -- require('nvim-treesitter.configs').setup({
            --   ensure_installed = 'all',
            --   ignore_install = { 'org' },
            -- })

            require("blink.cmp").setup({
                sources = {
                    per_filetype = {
                        org = { "orgmode" },
                    },
                    providers = {
                        orgmode = {
                            name = "Orgmode",
                            module = "orgmode.org.autocompletion.blink",
                            fallbacks = { "buffer" },
                        },
                    },
                },
            })
        end,
    },
    {
        "akinsho/org-bullets.nvim",
        event = "VeryLazy",
        ft = { "org" },
        config = function()
            require("org-bullets").setup()
        end,
    },
}
