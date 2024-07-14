using RustCall
using Test

@testset "RustCall.jl" begin
  @test RustCall.hello_world() == "Hello, World!"
end
