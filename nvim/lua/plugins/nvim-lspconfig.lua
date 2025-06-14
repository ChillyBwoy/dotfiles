return {
  "neovim/nvim-lspconfig",
  config = function()
    local servers = { "html", "cssls", "elixir", "ts_ls" }

    local on_init = function(client, _)
      if client.supports_method("textDocument/semanticTokens") then
        client.server_capabilities.semanticTokensProvider = nil
      end
    end

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem = {
      documentationFormat = { "markdown", "plaintext" },
      snippetSupport = true,
      preselectSupport = true,
      insertReplaceSupport = true,
      labelDetailsSupport = true,
      deprecatedSupport = true,
      commitCharactersSupport = true,
      tagSupport = { valueSet = { 1 } },
      resolveSupport = {
        properties = {
          "documentation",
          "detail",
          "additionalTextEdits",
        },
      },
    }

    local lspconfig = require("lspconfig")

    -- lsps with default config
    for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup({
        on_init = on_init,
        capabilities = capabilities,
      })
    end
  end,
}
