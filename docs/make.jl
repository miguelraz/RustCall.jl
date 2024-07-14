using RustCall
using Documenter

DocMeta.setdocmeta!(RustCall, :DocTestSetup, :(using RustCall); recursive = true)

const page_rename = Dict("developer.md" => "Developer docs") # Without the numbers

makedocs(;
  modules = [RustCall],
  authors = "Miguel Raz <miguelraz@gmail.com> and contributors",
  repo = "https://github.com/miguelraz/RustCall.jl/blob/{commit}{path}#{line}",
  sitename = "RustCall.jl",
  format = Documenter.HTML(; canonical = "https://miguelraz.github.io/RustCall.jl"),
  pages = [
    "index.md"
    [
      file for
      file in readdir(joinpath(@__DIR__, "src")) if file != "index.md" && splitext(file)[2] == ".md"
    ]
  ],
)

deploydocs(; repo = "github.com/miguelraz/RustCall.jl")
