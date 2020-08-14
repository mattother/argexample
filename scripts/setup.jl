using PackageCompiler
using Pkg
Pkg.activate(".")
Pkg.instantiate()

create_sysimage([:ArgParse, :ArgExample];
    sysimage_path="ArgExample.so",
    precompile_execution_file=joinpath(@__DIR__, "precompile.jl")
)