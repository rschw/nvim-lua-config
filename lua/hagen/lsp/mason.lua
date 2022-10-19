local status_ok, mason = pcall(require, "mason")
if not status_ok then
	return
end

local status_ok, masonconfig = pcall(require, "mason-lspconfig")
if not status_ok then
	return
end

local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
	return
end

local servers = { "jsonls", "sumneko_lua", "csharp_ls", "tsserver" }

mason.setup()

masonconfig.setup({
	ensure_installed = servers,
})

for _, server in pairs(servers) do
	local opts = {
		on_attach = require("hagen.lsp.handlers").on_attach,
		capabilities = require("hagen.lsp.handlers").capabilities,
	}
	local has_custom_opts, server_custom_opts = pcall(require, "hagen.lsp.settings." .. server)
	if has_custom_opts then
		opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
	end
	lspconfig[server].setup(opts)
end
