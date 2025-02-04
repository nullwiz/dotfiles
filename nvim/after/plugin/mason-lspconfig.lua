local path = require('plenary.path')

local function get_python_path(workspace)
  -- Use activated virtualenv.
  if vim.env.VIRTUAL_ENV then
    return path.join(vim.env.VIRTUAL_ENV, "bin", "python")
  end

  -- Find and use virtualenv via poetry in workspace directory.
  local match = vim.fn.glob(path.join(workspace, "poetry.lock"))
  if match ~= "" then
    local venv = vim.fn.trim(vim.fn.system("poetry env info -p"))
    return path.join(venv, "bin", "python")
  end

  -- Find in pyenv.
  if vim.env.PYENV_ROOT then
    -- version file contains the version of the active python interpreter
    local version_file = path.join(workspace, ".version")
    if path.exists(version_file) then
      local version = io.open(version_file):read()
      io.close(version)
      return path.join(vim.env.PYENV_ROOT, "versions", vim.fn.trim(version), "bin", "python")
    end
  end

  -- Fallback to system Python.
  return vim.fn.exepath("python3") or vim.fn.exepath("python") or "python"
end

local function get_venv(workspace)
  -- Implement logic to determine the venv path if needed
  -- Placeholder for the example
  return ""
end

require("mason-lspconfig").setup_handlers({

  function(server_name)
    require("lspconfig")[server_name].setup {}
  end,

  ["pyright"] = function()
    require("lspconfig").pyright.setup {
      on_init = function(client)
        client.config.settings.python.pythonPath = get_python_path(client.config.root_dir)
        client.config.settings.python.venvPath = path.join(vim.env.PYENV_ROOT, 'versions')
        client.config.settings.python.venv = get_venv(client.config.root_dir)
      end
    }
  end,

  ["ruff"] = function()
    require("lspconfig")["ruff"].setup {
      on_attach = function(client, bufnr)
        client.server_capabilities.hoverProvider = false
      end,
      on_init = function(client)
        client.config.settings.pythonPath = get_python_path(client.config.root_dir)
      end
    }
  end,

  ["lexical"] = function()
    require("lspconfig")["lexical"].setup {
      on_attach = function(client, bufnr)
        client.server_capabilities.hoverProvider = false
      end
    }
  end,


  ["rust_analyzer"] = function()
    require("lspconfig")["rust_analyzer"].setup {
      on_init = function(client)
        client.config.settings["rust-analyzer"].cargo.loadOutDirsFromCheck = true
      end
    }
  end,

  ["eslint"] = function()
    require("lspconfig")["eslint"].setup {
      on_attach = function(client, bufnr)
        client.resolved_capabilities.document_formatting = false
      end
    }
  end
})

