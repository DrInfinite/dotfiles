local esc = vim.api.nvim_replace_termcodes("<esc>", true, true, true)

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-------------------
-- CUSTOM MACROS --
-------------------

augroup("JSMacros", { clear = true })

autocmd("FileType", {
  group = "JSMacros",
  pattern = { "javascript", "typescript", "astro" },
  callback = function()
    vim.fn.setreg("l", "", "")
  end,
})
