local status_ok, neoformat = pcall(require, "neoformat")
if not status_ok then
  return
end

vim.g.neoformat_try_node_exe = 1
