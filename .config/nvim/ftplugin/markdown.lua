function set_todo_state(new_state)
  local states = { "TODO", "DONE", "INPROGRESS", "IMPORTANT", "CANCELLED" }

  local current_line = vim.api.nvim_get_current_line()
  local row, col = unpack(vim.api.nvim_win_get_cursor(0))
  local new_line = ""
  local state_string = "- " .. new_state.. ":"

  for _, state in ipairs(states) do
    if current_line:find("- " .. state .. ":") then
      new_line = string.gsub(current_line, "- ".. state .. ":", state_string, 1)
      vim.api.nvim_buf_set_lines(0, row-1, row, false, { new_line })
      return
    end
  end

  if current_line:find("- ") then
    new_line = string.gsub(current_line, "- ", state_string .. " ", 1)
  else
    new_line = state_string .. " " .. current_line
  end

  vim.api.nvim_buf_set_lines(0, row-1, row, false, { new_line })
end

vim.keymap.set("n", "<leader>tu", function() set_todo_state("TODO") end)
vim.keymap.set("n", "<leader>td", function() set_todo_state("DONE") end)
vim.keymap.set("n", "<leader>tp", function() set_todo_state("INPROGRESS") end)
vim.keymap.set("n", "<leader>ti", function() set_todo_state("IMPORTANT") end)
vim.keymap.set("n", "<leader>tc", function() set_todo_state("CANCELLED") end)


function _G.pcall_markdown_sugar()
  vim.cmd([[
    augroup markdown
      autocmd!
      au BufEnter *.md :syn match todoCheckbox '- TODO:' conceal cchar=󰄱
      au BufEnter *.md :syn match todoCheckbox '- DONE:' conceal cchar=󰸞
      au BufEnter *.md :syn match todoCheckbox '- INPROGRESS:' conceal cchar=󰦕
      au BufEnter *.md :syn match todoCheckbox '- IMPORTANT:' conceal cchar=󱈸
      au BufEnter *.md :syn match todoCheckbox '- CANCELLED:' conceal cchar=󰜺
    augroup END
  ]])
end

pcall_markdown_sugar()
