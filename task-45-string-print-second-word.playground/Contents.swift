// print second word in text



func secondWord(text: String) -> String {
    
    let arrayOfWords = text.characters

    if let spaceIndex = arrayOfWords.index(of: " ") {
        return text[arrayOfWords.index(after: spaceIndex)..<text.endIndex]
    }
    
    return ""
}

let str = "Hello, playground"
print(secondWord(text: str))                       // playground

print(secondWord(text: "orange cat"))              // cat
print(secondWord(text: "black dog"))               // dog
print(secondWord(text: "multicolored parrot"))     // parrot


