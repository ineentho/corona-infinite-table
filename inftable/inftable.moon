import newTableView from require 'widget'

--- Infinite corona table
-- Creates a new infinite corona table that can be fed from an API
class Inftable
    opts = {}

    loadedMore = (rows) =>
        print 'loaded more', rows

    loadMore = (e) =>
        opts.onLoadMore (rows) -> loadedMore self, rows


    --- create a new inftable, opts passed directly to newTableView
    -- with a few extras intercepted by the inftable wrapper:
    -- onLoadMore: Callback called when requiring more rows
    new: (_opts) =>
        opts = _opts
        opts.onRowRender = rowRender
        tableView = newTableView opts

        -- Request rows to display
        loadMore self
