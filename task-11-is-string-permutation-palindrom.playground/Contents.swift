// Given a string, write a function to check 
// if it is a permutation of a palindrome.
// The palindrome does not need to be a dictionary word.

//  input: Tact Coa
// output: true (permutations: "taco cat", "atco cta")

func isStringPermutatedPalindrome(input: String) -> Bool {
    
    let str = input.lowercased()
    var dict: [String: Int] = [:]
    var counterForOddChar: Int = 0
    
    for i in 0..<str.characters.count {
        
        let currentChar = String(str[str.index(str.startIndex, offsetBy: i)])
        
        // make dictionary how many times chars are seen in str
        if dict[currentChar] == nil {
            dict[currentChar] = 1
        } else {
            dict[currentChar] = dict[currentChar]! + 1
        }
    }
    
    // in palindrome can be no more than 1 odd char
    for (key, val) in dict {
        if counterForOddChar > 1 {
            return false
        } else if (key != " ") && (val % 2 != 0) {
            counterForOddChar += 1
        }
    }
    
    return true
}



let str1 = "Tact Coa"
print(isStringPermutatedPalindrome(input: str1))
// true

let str2 = "Tact Coaa"
print(isStringPermutatedPalindrome(input: str2))
// false
