local status, _ = pcall(vim.cmd, "colorscheme mellifluous")
if not status then 
  print("Colorscheme not found")
  return
end
