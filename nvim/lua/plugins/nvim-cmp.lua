local cmp = require 'cmp'
--local lspkind = require 'lspkind'

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end
    },
    sources = {
        { name = 'buffer' },
        { name = 'nvim_lsp' },
        { name = 'nvim_lsp_signature_help' },
        { name = 'nvim_lua' },
        --{ name = 'luasnip', option = { use_show_condition = false, show_autosnippets = true } }
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    -- 自动补全启用条件
    enabled = function()
        local context = require 'cmp.config.context'
        -- 当光标位于注释中时，保持命令模式完成启用
        if vim.api.nvim_get_mode().mode == 'c' then
            return true
        else
            -- 在注释中禁用自动补全
            return not context.in_treesitter_capture('comment') and not context.in_syntax_group('Comment')
        end
    end
})

cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' },
        { name = 'buffer-lines' }
    }
})

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})

--cmp.setup.filetype({ "c", "cpp" }, {
--    sources = {
--        { name = "buffer-lines" }
--    }
--})

cmp.setup.cmdline('/', {
    sources = cmp.config.sources({
        { name = 'nvim_lsp_document_symbol' }
    }, {
        { name = 'buffer' }
    })
})

cmp.event:on(
    'confirm_done',
    require('nvim-autopairs.completion.cmp').on_confirm_done()
)

