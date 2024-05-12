Inspect = require('inspect')

local t = { a = { b = { c = "Hello world!", 1 }, 2, d = { 3 } } }

print(Inspect(t))