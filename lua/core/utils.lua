
local M = {}

-- Function to require all Lua files in a given directory
M.require_all_in_dir = function(directory)
    local dir_path = vim.fn.stdpath("config") .. "/lua/" .. directory
    local files = vim.fn.globpath(dir_path, "*.lua", false, true)

    for _, file in ipairs(files) do
        local module_name = file:match("^.+/(.+)%.lua$")
        if module_name then
            require(directory .. "." .. module_name)
        end
    end
end

return M

