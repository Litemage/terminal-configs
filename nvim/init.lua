-- This setup was heavily inspired by ThePrimeagen and his video:
-- Video: https://www.youtube.com/watch?v=w7i4amO_zaE
-- GitHub: https://github.com/ThePrimeagen/init.lua

-- NOTES:
-- - [ ] Add a TODO/NOTE highlighter plugin
-- - [ ] Add harpoon?

-- HOW LSP & COMPLETION WORKS:
-- 1. mason + mason-lspconfig: Installs and auto-configures LSP servers (e.g., rust-analyzer)
-- 2. rust-analyzer (LSP server): Separate process that deeply understands your code
-- 3. nvim-lspconfig: Neovim's built-in LSP client that talks to rust-analyzer via LSP protocol
-- 4. nvim-cmp: The completion menu UI (Neovim has no built-in completion UI)
-- 5. cmp-nvim-lsp: The bridge - formats LSP data for nvim-cmp and tells the LSP what
--    features to enable via "capabilities". Without this, completions won't work properly.
-- 6. LuaSnip + friendly-snippets: Provides code templates (e.g., "fn" -> full function)
-- 7. Other sources: cmp-buffer (words in file), cmp-path (file paths), cmp_luasnip (snippets)
--
-- Configuration in after/plugin/mason.lua passes capabilities to all LSP servers,
-- and after/plugin/cmp.lua connects all completion sources to the UI.

require("config.lazy") -- Setup Lazy package manager
require("litemage") -- Require all my lua configs, after lazy

