local function my_function()
    -- Getting information about the current function
    local info = debug.getinfo(1, "n")

    print("Current function name:", info.name)
end

my_function()
