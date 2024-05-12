-- httpclient
-- luasocket

local hc = require('httpclient').new()
local json = require('cjson').new()
-- inspect = require('inspect')

local res = hc:get('http://httpbin.org/get')
if res.body then
    local tab = json.decode(res.body)
    -- print(inspect(tab))
    print(tab.origin)
else
    print(res.err)
end
