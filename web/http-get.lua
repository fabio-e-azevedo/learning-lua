-- lua version: 5.3
hc = require('httpclient').new()
json = require('cjson').new()
-- inspect = require('inspect')

res = hc:get('http://httpbin.org/get')
if res.body then
    tab = json.decode(res.body)
    -- print(inspect(tab))
    print(tab.origin)
else
    print(res.err)
end
