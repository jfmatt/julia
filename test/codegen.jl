# This file is a part of Julia. License is MIT: https://julialang.org/license

using Base.Test

@test !contains(Base._dump_function(isequal, (Nullable{BigFloat}, Nullable{BigFloat}),
                    #=native=#false, #=wrapper=#false, #=strip=#false,
                    #=dump_module=#true, #=syntax=#:att, #=optimize=#true), "%gcframe")
