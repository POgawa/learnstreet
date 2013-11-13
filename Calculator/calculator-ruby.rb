#Basic calculator project
include Math
def cube(n)
    @cube=n*n*n
end

def squareroot(n)
    if n < 0 then
        return "NAN"
    else
        return Math.sqrt(n)
    end
end

def negate(n)
    return -n
end

def factorial(n)
     if n ==0 then
        return 1
    end
    if n < 0 then
        return "NAN"
    end
    return n*factorial(n-1)
end
