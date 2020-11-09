local split = require "mini-string-split"

local r = split("aa bb cc  d dd e", " ", true)
--print(require"tprint"(r))
assert(table.concat(r, ";") == "aa;bb;cc;;d;dd;e")

local r = split("aa bb cc  d dd e", "%s+")
--print(require"tprint"(r))
assert(table.concat(r, ";") == "aa;bb;cc;d;dd;e")
