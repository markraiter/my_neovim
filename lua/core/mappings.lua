vim.g.mapleader = " "

-- NeoTree
vim.keymap.set('n', '<leader>E', ':Neotree float reveal<CR>')
vim.keymap.set('n', '<leader>e', ':Neotree left reveal<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree float git_status<CR>')

-- Navigation
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
vim.keymap.set('n', '<leader>/', ':CommentToggle<CR>')

-- Splits
vim.keymap.set('n', '|', ':vsplit<CR>')
vim.keymap.set('n', '\\', ':split<CR>')

-- Other
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>Q', ':qall<CR>')
vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')
vim.keymap.set('n', '<leader>X', ':BufferLineCloseRight<CR>')
vim.keymap.set('n', '<leader>s', ':BufferLineSortByTabs<CR>')
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Tabs
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')

-- Terminal
vim.keymap.set('n', '<leader>tf', ':ToggleTerm direction=float<CR>')
vim.keymap.set('n', '<leader>th', ':ToggleTerm direction=horizontal<CR>')
vim.keymap.set('n', '<leader>tv', ':ToggleTerm direction=vertical size=40<CR>')

-- Copilot
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- Использование системного буфера обмена

-- Визуальный режим: Копирование выделенного текста в системный буфер обмена
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })
-- Нормальный режим: Копирование текста от курсора до конца строки в системный буфер обмена
vim.api.nvim_set_keymap('n', '<leader>Y', '"+yg_', { noremap = true, silent = true })
-- Нормальный режим: Копирование выделенного текста в системный буфер обмена
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true, silent = true })
-- Нормальный режим: Копирование текущей строки в системный буфер обмена
vim.api.nvim_set_keymap('n', '<leader>yy', '"+yy', { noremap = true, silent = true })

-- Вставка из системного буфера обмена

-- Нормальный режим: Вставка содержимого системного буфера обмена после курсора
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', { noremap = true, silent = true })
-- Нормальный режим: Вставка содержимого системного буфера обмена перед курсором
vim.api.nvim_set_keymap('n', '<leader>P', '"+P', { noremap = true, silent = true })
-- Визуальный режим: Вставка содержимого системного буфера обмена, заменяя выделенный текст
vim.api.nvim_set_keymap('v', '<leader>p', '"+p', { noremap = true, silent = true })
-- Визуальный режим: Вставка содержимого системного буфера обмена перед выделенным текстом
vim.api.nvim_set_keymap('v', '<leader>P', '"+P', { noremap = true, silent = true })
