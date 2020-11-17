local split = require (arg[1] and arg[1]:match("(.+)%.lua") or "mini-string-split")

local s = "a b -c d"
local r = split(s, " %-",false)
assert(r[1]=="a b" and r[2]=="c d")

print("infinite loop?")
local r = split(s, " -",false)
local r = split(s, "[ ]-",false)
print("no, ok!")
