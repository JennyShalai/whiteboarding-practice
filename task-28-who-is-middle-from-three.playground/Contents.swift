// given 3 ints, return the middle value from three of them

func whoMiddle(one: Int, two: Int, three: Int) -> Int {
    
    if one <= two && one >= three || one >= two && one <= three {
        return one
    } else if two >= one && two <= three || two <= one && two >= three {
        return two
    } else {
        return three
    }
    
}

print(whoMiddle(one: 4, two: 3, three: 16))  // 4
print(whoMiddle(one: 3, two: 3, three: 16))  // 3
print(whoMiddle(one: 4, two: 6, three: 16))  // 16

