module ArgExample

export run

using ArgParse

function run(parseargs::Bool)
    s = ArgParseSettings()

    @add_arg_table! s begin
        "arg1"
            help = "This does stuff"
            action = :command
    end

    @add_arg_table! s["arg1"] begin
        "--verbose", "-v"
            help = "Verbose output"
            action = :store_true
    end

    if !parseargs
        return
    end

    args = parse_args(ARGS, s)
    println(args)
end

end # module
