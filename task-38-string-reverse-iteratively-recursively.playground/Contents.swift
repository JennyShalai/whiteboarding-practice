// Reverse a string iteratively and recursively

var str = "Hello, playground"

func reverseIteratively(str: String) -> String {
    var input = str
    var output = ""
    for i in 0..<input.characters.count {
        let currentChar = input[input.index(input.startIndex, offsetBy: i)]
        output = "\(currentChar)\(output)"
    }
    return output
}

print(reverseIteratively(str: str)) // dnuorgyalp ,olleH