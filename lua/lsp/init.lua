local lspconfig = require('lspconfig')

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local attach_funcs = function()
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer = 0 })
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
    vim.keymap.set("n", "<Leader>dj", vim.diagnostic.goto_next, { buffer = 0 })
    vim.keymap.set("n", "<Leader>dk", vim.diagnostic.goto_prev, { buffer = 0 })
    vim.keymap.set("n", "<Leader>dl", "<cmd>Telescope diagnostics<CR>", { buffer = 0 })
    vim.keymap.set("n", "<Leader>pr", "<cmd>Telescope lsp_references<CR>", { buffer = 0 })
    vim.keymap.set("n", "<Leader>rn", vim.lsp.buf.rename, { buffer = 0 })
    vim.keymap.set("n", "<Leader>fm", vim.lsp.buf.formatting, { buffer = 0 })
end

lspconfig.gopls.setup({
    capabilities = capabilities,
    on_attach = attach_funcs
})

lspconfig.clangd.setup({
    capabilities = capabilities,
    on_attach = attach_funcs,
})

lspconfig.pyright.setup({
    capabilities = capabilities,
    on_attach = attach_funcs
})

lspconfig.sqls.setup({
    capabilities = capabilities,
    on_attach = function(client, bufnr)
        attach_funcs()
        require('sqls').on_attach(client, bufnr)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>ev', "<Cmd>set opfunc=v:lua.require'sqls.commands'.query<CR>g@"
            , { silent = true })
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>eq', "<Cmd>SqlsExecuteQueryOnCursor<CR>", {})
    end
})


local rt = require("rust-tools")

rt.setup({
    server = {
        on_attach = function(_, bufnr)
            vim.keymap.set("n", "<Leader>ha", rt.hover_actions.hover_actions, { buffer = bufnr })
            vim.keymap.set("n", "<Leader>ca", rt.code_action_group.code_action_group, { buffer = bufnr })
            vim.keymap.set("n", "<Leader>me", rt.expand_macro.expand_macro, { buffer = bufnr })

            attach_funcs()
        end,
    },
})

-- IMPORTANT: make sure to setup lua-dev BEFORE lspconfig
require("lua-dev").setup({})

-- example to setup sumneko and enable call snippets
lspconfig.sumneko_lua.setup({
  Lua = {
    completion = {
      callSnippet = "Replace"
    }
  }
})


lspconfig.bashls.setup({
    capabilities = capabilities,
    on_attach = attach_funcs
})

vim.opt.completeopt = { "menu", "menuone", "noselect" }

local cmp = require 'cmp'

cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
    },
    window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }, -- For luasnip users.
    }, {
        { name = 'buffer' },
    })
})
