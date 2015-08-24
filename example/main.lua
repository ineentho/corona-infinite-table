local Inftable = require('inftable.inftable')

local tbl = Inftable({
    a = 'b'
})


print(tbl:getOpt('a'))
