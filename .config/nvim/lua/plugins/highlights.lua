local todo_comments = {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        keywords = {
            DONE = {
                icon = "󰔓 ",
                color = "info",
                alt = { "COMPLETED", "FINISHED" },
            },
        },
    },
}

return todo_comments
