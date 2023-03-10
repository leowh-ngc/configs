return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

    -- LSP客户端配置插件
    use 'neovim/nvim-lspconfig'

    -- 自动匹配括号插件
    use {
        'windwp/nvim-autopairs',
        config = function() 
            require('nvim-autopairs').setup {} 
        end
    }

    -- 补全插件
    use 'hrsh7th/nvim-cmp'
    -- 补全源
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-buffer'
    use 'amarakon/nvim-cmp-buffer-lines'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lsp-document-symbol'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-nvim-lua'
end)
