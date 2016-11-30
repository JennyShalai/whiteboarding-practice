// The prime factors of 13195 are 5, 7, 13 and 29.
// What is the largest prime factor of the number 600851475143 ?

import Foundation

func largestPrimeFactor(number: Int) -> Int {
    
    var input = number
    var result = 0
    var prime = 2
    
    while true {
        // trying to divide number by current prime
        if input % prime == 0 {
            result = prime
            input = input / prime
            prime = 2
            // checking is the result of the division prime
            if isPrime(number: input) {
                if input > result {
                    return input
                } else {
                    return result
                }
            }
        // asking for next prime number
        } else {
            prime = nextPrimeAfter(number: prime)
        }
        
        
    }
}

func isPrime(number: Int) -> Bool {
    switch number {
    case 0, 1:
        return false
    case 2, 3:
        return true
    default:
        if number % 2 == 0 || number % 3 == 0 {
            return false
        }
        var i = 5
        var j = 2
        while i * i <= number {
            if number % i == 0 {
                return false
            }
            i += j
            j = 6 - j
        }
    }
    
    return true
}

func nextPrimeAfter(number: Int) -> Int {
    switch number {
    case 1:
        return 2
    case 2:
        return 3
    case 3, 4:
        return 5
    case 5, 6:
        return 7
    case 7, 8, 9, 10:
        return 11
    default:
        var result = number + 1
        while true {
            if isPrime(number: result) {
                return result
            } else {
                result += 1
            }
        }
    }
}

let start = DispatchTime.now()
print(largestPrimeFactor(number: 600851475143))         // 6857
let end = DispatchTime.now()
print("time: \(end.rawValue - start.rawValue)")         // time: ~0.7519 sec

let startDate = Date()
print(largestPrimeFactor(number: 600851475143))         // 6857
let endDate = Date()
print("time \(endDate.timeIntervalSince(startDate))")   // time: ~0.7945 sec


print(largestPrimeFactor(number: 13195))            // 29
print(largestPrimeFactor(number: 12))               // 3
