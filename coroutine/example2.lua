-- Definindo uma função que cria e manipula coroutines
function My_coroutine()
    print("===>>> Start Coroutine <<<===")
    for i = 1, 5 do
        local msg = string.format("Executing task inside My_coroutine function: %d", i)
        print(msg)
        coroutine.yield()  -- Suspender a coroutine
    end
    print("===>>> Stop Coroutine <<<===")
end

-- Criando uma coroutine
local co = coroutine.create(My_coroutine)

-- Executando a coroutine em um loop
for i = 1, 7 do
    print("\nExecuting task inside for loop:", i)
    coroutine.resume(co)  -- Retomar a execução da coroutine
end
