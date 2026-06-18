return {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { '.git', 'lua', '.luarc.json' },
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT' },
      diagnostics = { globals = { 'vim' } },
    },
  },
}

