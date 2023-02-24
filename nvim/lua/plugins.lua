return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

    -- 补全插件
    use 'hrsh7th/nvim-cmp'
    -- buffer相关的补全源
    use 'hrsh7th/cmp-buffer'
    use 'amarakon/nvim-cmp-buffer-lines'
    use 'hrsh7th/cmp-calc'
    use 'uga-rosa/cmp-dictionary'
    use 'dmitmel/cmp-digraphs'
    use 'hrsh7th/cmp-omni'
    -- LSP相关的补全源
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lsp-document-symbol'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'onsails/lspkind.nvim'
    -- 其他补全源
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
end)
