-- Function to get the Python interpreter path from the current shell
local python_path = function()
  local shell = vim.fn.expand("$SHELL")
  local output = vim.fn.systemlist(shell .. " -l -c 'which python'")
  if output and #output > 0 then
    return output[1]
  else
    return nil  -- or a default python path as a fallback
  end
end

require("mason-lspconfig").setup_handlers {
  function(server_name)
    require("lspconfig")[server_name].setup {}
  end,

  ["pyright"] = function()
    require("lspconfig").pyright.setup {
      on_init = function(client)
        local interpreter_path = python_path()
        if interpreter_path then
          client.config.settings.python.pythonPath = vim.fn.expand(interpreter_path)
          -- Uncomment the following lines if needed
          -- client.config.settings.venvPath = path.join(vim.env.PYENV_ROOT, 'versions')
          -- client.config.settings.venv = get_venv(client.config.root_dir)
        end
      end
    }
  end,

  ["ruff_lsp"] = function()
    require("lspconfig")["ruff_lsp"].setup {
      on_attach = function(client, bufnr)
        client.server_capabilities.hoverProvider = false
      end,
      on_init = function(client)
          client.config.interpreter = client.config.interpreter 
      end
    }
  end,
}
