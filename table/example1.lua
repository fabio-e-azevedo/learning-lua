local my_table = {"C", "C++", "Perl", "Lua"}

-- imprime tudo junto
print("Imprimido a my_table: " .. table.concat(my_table, " ===>>> "))

-- imprime com espaçamento
print("Imprimido a my_table: " .. table.concat(my_table," "))

-- imprime do segundo ao terceiro elemento
print("Imprimido a my_table: " .. table.concat(my_table," ",2,3))

-- removendo o último índice da my_table:
table.remove( my_table)
print( table.concat( my_table,", " ) )

-- removendo o 3º índice(JavaScript) da my_table:
table.remove( my_table, 3)
print( table.concat( my_table,", " ) )

-- insere um índice(Rust) na última posição
table.insert(my_table, "Rust" )
print( table.concat( my_table," " ) )

-- insere um índice(Lua) na 1º posição
table.insert(my_table, 1, "Lua" )
print( table.concat( my_table," " ) )

-- informa a quantidade de índices da my_table, lua version 5.1
if (_VERSION == "Lua 5.1") then
    print("A 'my_table' tem: "..table.maxn(my_table) .. " índices")
end

local function callback(key, value)
    print(key .. " " .. value)
end

-- Iterando sobre os elementos da my_table usando table.foreach(), lua version 5.1
if (_VERSION == "Lua 5.1") then
    table.foreach(my_table, callback)
end
