require'nvim-treesitter.configs'.setup {
  ensure_installed = { "go", "lua", "rust", "java", "javascript", "python" },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
