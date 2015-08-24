class Inftable
    --- create a new inftable, opts passed directly to newTableView
    new: (opts) =>
        @opts = opts

    --- Return the specified option
    getOpt: (opt) =>
        return @opts[opt]

