return {
  "kristijanhusak/vim-dadbod-ui",
  dependencies = {
    { "tpope/vim-dadbod", lazy = true },
    { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
  },
  cmd = {
    "DBUI",
    "DBUIToggle",
    "DBUIAddConnection",
    "DBUIFindBuffer",
  },
  init = function()
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.db_ui_show_database_icon = 1
    vim.g.db_ui_force_echo_notifications = 1
    vim.g.db_ui_win_position = "left"
    vim.g.db_ui_winwidth = 60

    vim.g.db_ui_table_helpers = {
      mysql = {
        Count = "select count(1) from {optional_schema}{table}",
        Explain = "EXPLAIN {last_query}",
      },
      sqlite = {
        Describe = "PRAGMA table_info({table})",
      },
      postgres = {
        Count = "select count(1) from {optional_schema}{table}",
        Explain = "EXPLAIN {last_query}",
      },
    }

    vim.g.db_ui_icons = {
      expanded = {
        db = "▾ ",
        buffers = "▾ ",
        saved_queries = "▾ ",
        schemas = "▾ ",
        schema = "▾ 󰙅",
        tables = "▾ ",
        table = "▾ ",
      },
      collapsed = {
        db = "▸ ",
        buffers = "▸ ",
        saved_queries = "▸ ",
        schemas = "▸ ",
        schema = "▸ 󰙅",
        tables = "▸ ",
        table = "▸ 󰓫",
      },
      saved_query = "",
      new_query = "",
      tables = "",
      buffers = "",
      add_connection = "",
      connection_ok = "✓",
      connection_error = "✕",
    }

    -- opening it in a new tab
    vim.keymap.set("n", "<leader><leader>db", ":tab DBUI<cr>", {})

    -- just close the tab, but context related of the keybinding
    vim.keymap.set("n", "<leader><leader>tq", ":tabclose<cr>")

    -- Replace submit request
    vim.keymap.set("n", "<C-Enter>", ":DBUI_SelectLineVsplit <cr>")
  end,
}
