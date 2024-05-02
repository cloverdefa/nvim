vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt -- 為了簡潔

-- 行號
opt.relativenumber = true -- 顯示相對行號
opt.number = true -- 在光標行顯示絕對行號（啟用相對行號時）

-- 標籤 & 縮進
opt.tabstop = 2 -- 標籤為2個空格（prettier預設值）
opt.shiftwidth = 2 -- 縮進寬度為2個空格
opt.expandtab = true -- 將標籤轉換成空格
opt.autoindent = true -- 新行開始時複製當前行的縮進

-- 換行
opt.wrap = false -- 禁用自動換行

-- 搜索設置
opt.ignorecase = true -- 搜索時忽略大小寫
opt.smartcase = true -- 如果搜索包含大小寫混合，則假設你需要區分大小寫

-- 光標行
opt.cursorline = true -- 高亮當前光標所在行

-- 外觀

-- 啟用 termguicolors 以使 nightfly 色彩主題生效
-- （必須使用 iterm2 或其他支持真彩色的終端機）
opt.termguicolors = true
opt.background = "dark" -- 可以是亮色或暗色的色彩主題將被設為暗色
opt.signcolumn = "yes" -- 顯示標誌欄，以防文本位移

-- 回退鍵
opt.backspace = "indent,eol,start" -- 允許在縮進、行尾或插入模式起始位置使用回退鍵

-- 剪貼板
opt.clipboard:append("unnamedplus") -- 使用系統剪貼板作為預設寄存器

-- 分割窗口
opt.splitright = true -- 垂直分割窗口向右分割
opt.splitbelow = true -- 水平分割窗口向下分割

-- 關閉交換檔案
opt.swapfile = false

vim.g.python3_host_prog = "~/.pyenv/shims/python3"
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
