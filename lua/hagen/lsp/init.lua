local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "hagen.lsp.mason"
require "hagen.lsp.handlers".setup()
require "hagen.lsp.null-ls"
