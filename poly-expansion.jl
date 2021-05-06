
function expand(x,y)
    v = vec([])
    for i in 1:size(x)[1]
        for j in 1:size(y)[1]
            push!(v, x[i]*y[j])
        end
    end
    return v
end

function calc(x)
    # COUNTS AND ADDS UP VARIABLES!
    v = vec([])
    for i in 1:size(x)[1]
        count = 1
        occ = false
        for j in 1:size(x)[1]
            # Cant add an element with itself
            if i == j
                continue
            end
            # collect breaks the string down into an array
            # sort sorts then alphabetically
            # so 2ab is identified the same as 2ba
            if sort(collect(x[i])) == sort(collect(x[j]))
                count = count + 1
                occ = true
                x[j] = string(j)# so that next time, the same variable cannot interfiere

            end
        end

        if occ
            push!(v,string(count)*x[i])
        else
            # Check if its the number we replaced the variables with
            # if it is, we dont want it interfiering
            if tryparse(Int64, string(x[i])) == nothing
                temp = 1
                k = collect(x[i])
                for iter in 1:size(k)[1]
                    # using temp2 to not call the same function twice
                    temp2 = tryparse(Int64, string(k[iter]))
                    if temp2 != nothing
                        temp = temp + temp2
                        k[iter] = ' '
                    end
                end
                # Removes char " " from the string
                # thx StackOverflow!
                filter!(e->e!=' ',k)
                if temp != 1
                    push!(v,string(temp)*join(sort(k)))
                else
                    push!(v,x[i])
                end

            end
        end
    end
    # At some cases with high number of features, you can get numbers within the array
    # one final step to remove them!
    y = vec([])
    for i in 1:size(v)[1]
        if tryparse(Int64, string(v[i])) == nothing
            push!(y,v[i])
        end
    end
    return y
end

function power(x,n)
    println("Initial: ",x)
    t = x
    for i in 1:n-1
        t = calc(expand(x,t))
    end
    println("Final: ",t)
end


# NUMBER OF VARIABLES! max is 24 as of now
m = 2
alpha = "abcdefghijklmnopqrstuvwxyz"

x = vec([])
for i in 1:m
    push!(x,alpha[i])
end
# power(x, the power you raise it to)
power(x,3)
