# ArgExample

`Julia` command line application example of using `ArgParse` with `PackageCompiler` to
increase loading speed.

## Prerequisites

Install `julia` and `PackageCompiler`

```bash
julia -e 'using Pkg; Pkg.add("PackageCompiler")'
```

## Installation

Clone the repo and run `setup.jl` to create the preimage.

```bash
git clone https://github.com/mattother/argexample
cd argexample
julia scripts/setup.jl
```

## Running

```bash
# with preimage
time julia --project=@. -JArgExample.so app.jl -h
real	0m0.572s
user	0m0.696s
sys	    0m0.119s

# without preimage
time julia --project=@. app.jl -h
real	0m4.110s
user	0m4.158s
sys	    0m0.152s
```