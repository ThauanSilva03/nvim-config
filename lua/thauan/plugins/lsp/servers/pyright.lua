return {
  settings = {
    python = {
      pythonPath = vim.fn.getcwd() .. "/.venv/bin/python",
      analysis = {
        typeCheckingMode = "basic",
        useLibraryCodeForTypes = true,
        autoSearchPaths = true,
        diagnosticMode = "workspace",
      },
    },
  },
}
