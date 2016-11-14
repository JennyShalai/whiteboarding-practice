

func calculateFactorial(N: Int) -> Int {
    
    var result: Int = 1
    
    for i in 1...N {
        result = result * i
    }
    
    return result
}

print(calculateFactorial(N: 4)) // 24  => 4! = 1*2*3*4
print(calculateFactorial(N: 5)) // 120 => 5! = 1*2*3*4*5



func calcNFactorialWithRecursion(N: Int) -> Int {

    if N == 1 {
        return 1
    } else {
        return N * calcNFactorialWithRecursion(N: N-1)
    }
    
}

print(calcNFactorialWithRecursion(N: 4)) // 24  => 4! = 4*3*2*1
print(calcNFactorialWithRecursion(N: 5)) // 120 => 5! = 5*4*3*2*1