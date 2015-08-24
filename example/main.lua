local Inftable = require('inftable.inftable')

local tbl = Inftable({
    onLoadMore = function (callback)
        timer.performWithDelay(500, function()
            resp = {}
            table.insert(resp, {
                name = 'Winner',
                score = 10
            })
            table.insert(resp, {
                name = 'Test',
                score = 5
            })
            callback(resp)
        end)
    end
})
