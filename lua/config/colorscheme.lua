local status, _ = pcall(vim.cmd, "colorscheme material-deep-ocean")
if not status then 
  print("Colorscheme not found")
  return
end
