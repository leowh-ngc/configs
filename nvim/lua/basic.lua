vim.g.encoding = 'UTF-8'
vim.o.fileencoding = 'utf-8'
vim.wo.number = true -- 行号
vim.wo.relativenumber = true -- 相对行号
vim.wo.cursorline = false -- 高亮当前行
vim.wo.signcolumn = 'no' -- 显示左侧图标指示列
vim.wo.colorcolumn = "150" -- 右侧参考线，超过表示代码太长了，考虑换行
vim.g.completeopt = "menu,menuone,noselect,noinsert" -- 自动补全不自动选中
vim.o.showmode = false -- 使用增强状态栏后不再需要 vim 的模式提示
vim.o.cmdheight = 2 -- 命令行高为2，提供足够的显示空间
vim.o.hidden = true -- 允许隐藏被修改过的buffer
vim.o.mouse = "a" -- 鼠标支持
vim.o.updatetime = 300 -- smaller updatetime 
vim.o.timeoutlen = 400 -- 等待mappings

-- vim.o.list = true -- 不可见字符的显示，这里只把空格显示为一个点
-- vim.o.listchars = "space:·"
-- vim.o.wildmenu = true -- 补全增强
-- vim.o.shortmess = vim.o.shortmess .. 'c' -- Dont' pass messages to |ins-completin menu|
-- vim.o.pumheight = 10
-- vim.o.showtabline = 4 -- always show tabline

-- 样式
vim.o.background = "dark"
vim.o.termguicolors = true
vim.opt.termguicolors = true

-- 缩进4个空格
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true

-- >> << 时移动长度
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4

-- 新行对齐当前行，空格替代tab
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- 搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = false -- 搜索不要高亮
vim.o.incsearch = true -- 边输入边搜索

-- 当文件被外部程序修改时，自动加载
vim.o.autoread = true
vim.bo.autoread = true

-- 禁止折行
vim.o.wrap = false
vim.wo.wrap = false

-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- 行结尾输入以下指令时可以跳到下一行
-- vim.o.whichwrap = 'b,s,<,>,[,],h,l'

-- split window 从下边和右边出现
-- vim.o.splitbelow = true
-- vim.o.splitright = true

