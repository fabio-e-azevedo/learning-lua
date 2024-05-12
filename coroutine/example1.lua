
local co = coroutine.create(function ()
    coroutine.yield('beginning')
    coroutine.yield('middle')
    return "end"
end)

print(coroutine.resume(co))
print(coroutine.resume(co))
print(coroutine.resume(co))
print(coroutine.resume(co))