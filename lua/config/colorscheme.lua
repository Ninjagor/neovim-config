local status, _ = pcall(vim.cmd, "colorscheme rose-pine")
if not status then 
  print("Colorscheme not found")
  return
end
