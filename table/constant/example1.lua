local my_table = {}

-- Definindo a "constante" dentro da tabela
my_table.MY_CONSTANT = 42

-- Definindo um método de acesso para a constante
function my_table:get_constant()
    return self.MY_CONSTANT
end

-- Tentativa de modificar a "constante" (não é possível)
function my_table:set_constant(new_value)
    error("You cannot modify a constant.")
end

print(my_table:get_constant())

-- Tentativa de modificar a "constante" (resultará em erro)
-- my_table:set_constant(50)
