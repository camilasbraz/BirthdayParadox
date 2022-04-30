@inline function atleast2(npersons)
    @inbounds for i in 1:npersons-1
        365rand() < i && return true
    end
    false
end

function _simulate_bday(npersons, ntimes=1_000_000)
    cnt = 0
    for _ in 1:ntimes
        cnt += atleast2(npersons)
    end
    result = round(100*(cnt/ntimes),digits = 1)
    result
end

_simulate_bday(23)


#source: https://discourse.julialang.org/t/fastest-way-to-simulate-the-birthday-paradox/47756
