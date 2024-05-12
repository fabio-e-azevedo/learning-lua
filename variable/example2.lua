local str = [[LUA é muito bacana!]] -- OR str = "Lua é muito bacana!"
print(str)


local green = "\027[102m"
local disabled = "\027[m"
print(green .. str .. disabled)


-- do 30 ao 37(8 cores)
-- mas tem mais: tente do 0 até 106
for i = 30,37 do
  if( i == 30) then
    -- se seu terminal for a cor do fundo
    -- não aparecerá o fundo
    print("\027[90m" .. str .. "\027[m")
  else
    print("\027[" .. i .. "m" .. str .. "\027[m")
  end
end

print( string.upper( str ) )

print( string.lower( str ) )

str = string.gsub(str,"muito bacana","incrivel")
print(str)

str = "❤"
print( string.format("Eu %s  Lua!", str) )

str = "Uauu! A Lua!"
print( string.reverse(str) )

print( string.len(str) )

str = "Lua "
print( string.rep(str, 5) )