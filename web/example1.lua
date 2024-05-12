-- lua-http

local http_request = require "http.request"
local cjson = require("cjson")

local headers, stream = assert(http_request.new_from_uri("https://jsonplaceholder.typicode.com/users"):go())
local body = assert(stream:get_body_as_string())
if headers:get ":status" ~= "200" then
    error(body)
end

local users = cjson.decode(body)

for i, _ in ipairs(users) do
    print(users[i].name, users[i].email)
end

-- print(cjson.encode(users[1]))