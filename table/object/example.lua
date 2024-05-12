-- Definindo um objeto
local myObject = {
    name = "Dead Duck",
    age = 27,
    description = "A simple object in Lua.",
    
    -- Método para exibir informações do objeto
    showInfo = function(self)
        print("Name:", self.name)
        print("Age:", self.age)
        print("Description:", self.description)
    end
}

-- Usando o objeto
print("===>>> Name:", myObject.name)
myObject.showInfo(myObject) -- Passando o objeto explicitamente como argumento
myObject:showInfo()         -- Objeto é passado automaticamente como o primeiro argumento
