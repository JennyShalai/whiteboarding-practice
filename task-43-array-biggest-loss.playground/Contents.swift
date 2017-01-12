// given an array of n integers, which represents the prices of a stock over n consecutive days.
// write a function that returns the biggest loss you could incur over those n days by buying high and selling low.
// for example: if the array contains [ 14, 1, 18, 23, 12, 8, 16 ], then the biggest possible loss is $15 (buying at $23 and selling at $8).



// naive O(n2)
func biggestLoss(array: [Int]) -> Int {
    var loss = Int.min
    for (index, stock) in array.enumerated() {
        for i in index+1..<array.count {
            if stock - array[i] > loss {
                loss = stock - array[i]
            }
        }
    }
    return loss
}

let array1 = [ 14, 1, 18, 23, 12, 8, 16 ]
let array2 = [ 18, 5, 19, 7 ]

print(biggestLoss(array: array1))   // 15
print(biggestLoss(array: array2))   // 13
