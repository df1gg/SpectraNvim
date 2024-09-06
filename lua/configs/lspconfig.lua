local capabilities = require('cmp_nvim_lsp').default_capabilities()
local nvim_lsp = require('lspconfig')

-- Settings icons for diagnostic
local function lspSymbol(name, icon)
    vim.fn.sign_define("DiagnosticSign" .. name, { text = icon, numhl = "Diagnostic" .. name })
end

lspSymbol("Error", " ")
lspSymbol("Warn", " ")
lspSymbol("Hint", " ")
lspSymbol("Info", " ")

-- Global diagnostic settings
vim.diagnostic.config({
    virtual_text = {
        prefix = '●',
    },
    signs = true,
    update_in_insert = false,
    underline = true,
    severity_sort = true,
    float = {
        source = "always", -- Show the source of diagnostic
    },
})

-- Settings on_attach
local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    -- Enable autocomplite
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mapping for LSP
    local opts = { noremap=true, silent=true }
    buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', '<leader>f', '<cmd>lua vim.lsp.buf.format({ async = true })<CR>', opts)
end

-- ========================================================================================
--                                 INSTALL LSP
-- ========================================================================================

-- LUA
nvim_lsp.lua_ls.setup{}


-- C#
-- nvim_lsp.omnisharp.setup{
--     cmd = { "dotnet", vim.fn.expand("~/.local/share/nvim/mason/packages/omnisharp/libexec/OmniSharp.dll") }
-- }

-- C and C++
nvim_lsp.clangd.setup{
    cmd = { "clangd", "--compile-commands-dir=./build" },  -- Укажите путь к compile_commands.json
    filetypes = { "c", "cpp", "objc", "objcpp" },
    root_dir = require'lspconfig'.util.root_pattern("compile_commands.json", ".git"),
}

-- Cmake
nvim_lsp.neocmake.setup{}

-- Python
nvim_lsp.pyright.setup{}









