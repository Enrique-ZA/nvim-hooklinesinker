local M = {}

function M.save_position()
  local position = vim.api.nvim_win_get_cursor(0)
  local line = vim.api.nvim_get_current_line()
  local file = vim.api.nvim_buf_get_name(0)

  vim.api.nvim_set_var('hooklinesinker_position', position)
  vim.api.nvim_set_var('hooklinesinker_line', line)
  vim.api.nvim_set_var('hooklinesinker_file', file)

  print("Current position hooked")
end

function M.return_position()
  local position = vim.api.nvim_get_var('hooklinesinker_position')
  local file = vim.api.nvim_get_var('hooklinesinker_file')

  if position == nil or file == nil then
    print("No position saved")
    return
  end

  local current_file = vim.api.nvim_buf_get_name(0)
  if file == current_file then
    vim.api.nvim_win_set_cursor(0, position)
  else
    vim.api.nvim_command('edit ' .. file)
    vim.api.nvim_win_set_cursor(0, position)
  end
end

return M

