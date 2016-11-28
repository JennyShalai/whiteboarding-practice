// Project Euler
//
// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
// Find the sum of all the multiples of 3 or 5 below 1000.

// IDEA:
// how many numbers 3 is multipler? 999/3 = 333
// how many numbers 5 is multipler? 999/5 = 199
// sum of 333 numbers is ∑(from 1 to 333)*3 = ( (a1 + aN)*N/2 )*3 = ( (1 + 333)*333/2 )*3 = 166833
// sum of 199 numbers is ∑(from 1 to 199)*5 = ( (a1 + aN)*N/2 )*5 = ( (1 + 199)*199/2 )*5 = 99500
// but we count numbers for which and 3 and 5 are multiplers so we need to dicrement them
// dicrement sum of 66 numbers ∑(from 1 to 66)*15 = ( (a1 + aN)*N/2 )*15 = ( (1 + 66)*66/2 )*15 = 33165
// result = 166833 + 99500 - 33165 = 233168


func sumMultiples() -> Int {
    
    var result = 0
    
    for i in 1..<1000 {
        if i % 3 == 0 || i % 5 == 0 {
            print(i)
            result += i
        }
    }
    
    return result
}

print(sumMultiples())   // 233168