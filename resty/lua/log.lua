local headers = ngx.req.get_headers()

local referer = headers['referer'];

if(referer ~= nil) then ngx.log(ngx.INFO, referer); end