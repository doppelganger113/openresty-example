local headers = ngx.req.get_headers()

local referer = headers['referer'];

if(referer ~= nil) then ngx.say('Referer ', referer, '<br>'); end

for k, v in pairs(headers) do
    ngx.say(string.format("Key %s : Value %s<br>", k, v))
end