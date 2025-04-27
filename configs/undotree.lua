local keymap = vim.keymap.set

-- Function to toggle Undotree with a limited width
local function toggle_undotree()
    vim.cmd.UndotreeToggle()
    -- Get the Undotree window ID
    local undotree_win = vim.fn.win_findbuf(vim.fn.bufnr('undotree'))[1]
    if undotree_win then
        -- Set the width of the Undotree window
        vim.api.nvim_win_set_width(undotree_win, 35)  -- Set the width to 30 columns (adjust as needed)
    end
end

-- Map the leader key to the custom toggle function
keymap("n", "<leader>u", toggle_undotree)
