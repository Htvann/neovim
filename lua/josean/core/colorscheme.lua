-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")
-- local status, _ = pcall(vim.cmd, "colorscheme ghdark")
local status, _ = pcall(vim.cmd, "colorscheme kanagawa-wave")
-- local status, _ = pcall(vim.cmd, "colorscheme material")
if not status then
  print("Colorscheme not found!") -- print error if colorscheme not installed
  return
end
