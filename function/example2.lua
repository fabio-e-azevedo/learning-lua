Result_en = function(flag)
    print("The result is: " .. flag)
end

Result_br = function(flag)
    print("O resultado é: " .. flag)
end

function Sum(x, y, callback)
    local result = x + y
    callback(result)
end

Sum(22, 20, Result_en)
Sum(22, 20, Result_br)