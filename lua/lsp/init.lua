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

require('lspconfig').gopls.setup({
    capabilities = capabilities,
    on_attach = attach_funcs
})

require('lspconfig').pyright.setup({
    capabilities = capabilities,
    on_attach = attach_funcs
})

-- require('lspconfig').rust_analyzer.setup({
--    capabilities = capabilities,
--    on_attach = attach_funcs
-- })
local rt = require("rust-tools")

rt.setup({
    server = {
        on_attach = function(_, bufnr)
            vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
            vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
            vim.keymap.set("n", "<Leader>me", rt.expand_macro.expand_macro, { buffer = bufnr })

            attach_funcs()
        end,
    },
})

require('lspconfig').sumneko_lua.setup({
    capabilities = capabilities,
    on_attach = attach_funcs
})

require('lspconfig').sqlls.setup({
    capabilities = capabilities,
    on_attach = attach_funcs
})


require('lspconfig').bashls.setup({
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



