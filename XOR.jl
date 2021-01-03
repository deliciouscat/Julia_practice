using LinearAlgebra

function AND(x1,x2)
    x = [x1 x2]
    w = [0.5 0.5]       # w1 = w2 ≤ theta
    b = -0.6
    tmp = dot(x,w) + b
    if tmp <= 0
        return 0
    elseif tmp > 0             # 0.5를 넘으면 1, 못넘으면 0 반환
        return 1
    end
end

function NAND(x1,x2)
    x = [x1 x2]
    w = [-0.5 -0.5]        # AND 게이트의 것을 부호반전 시키면 된다.
    b = 0.6
    tmp = dot(x,w) + b
    if tmp <= 0
        return 0
    elseif tmp > 0
        return 1
    end
end

function OR(x1, x2)
    x = [x1 x2]
    w = [0.5 0.5]
    b = -0.3              # w1 = w2 > theta
    tmp = dot(w,x) + b
    if tmp <= 0
        return 0
    else
        return 1
    end
end

function XOR(x1, x2)
    s1 = NAND(x1, x2)
    s2 = OR(x1, x2)
    y = AND(s1, s2)
    return y
end


println(XOR(0,0))
println(XOR(1,0))
println(XOR(0,1))
println(XOR(1,1))