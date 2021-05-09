
function expand(v1,v2)
    v = vec([])
    for i in 1:size(v1)[1]
        for j in 1:size(v2)[1]
            push!(v, v1[i]*v2[j])
        end
    end
    return v
end

function calc(x)
    v = vec([])
    fin = vec([])
    for i in 1:size(x)[1]
        push!(v,join(sort(collect(x[i]))))
    end
    t = Set(v)
    temp = 0
    for j in t
        temp = count(i->(i == j),v)
        if temp != 1
            push!(fin,string(temp)*j)
        else
            push!(fin,j)
        end
    end
    return fin
end

function poly_expand(m,n)
    alpha = "abcdefghijklmnopqrstuvwxyz"
    x = vec([])
    for i in 1:m
        push!(x,alpha[i])
    end
    t = copy(x)
    for i in 1:(n-1)
        t = copy(expand(x,t))
    end
    return calc(t)
end
