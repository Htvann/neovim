-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")
-- local status, _ = pcall(vim.cmd, "colorscheme dracula")
-- local status, _ = pcall(vim.cmd, "colorscheme ghdark")
local status, _ = pcall(vim.cmd, "colorscheme catppuccin-macchiato")
-- local status, _ = pcall(vim.cmd, "colorscheme github_dark_dimmed")
-- local status, _ = pcall(vim.cmd, "colorscheme palenight")
-- local status, _ = pcall(vim.cmd, "colorscheme solarized-osaka")

if not status then
  print("Colorscheme not found!") -- print error if colorscheme not installed
  return
end
