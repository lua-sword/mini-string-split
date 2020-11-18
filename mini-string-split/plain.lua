local split = require "mini-string-split"
return function(self, pat, max)
	return split(self, pat, true, max)
end
