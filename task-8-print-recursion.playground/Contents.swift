

var str = "Hello, playground!"



///////////////////   print with recursion   //////////////////////

func printStringWithRecursion(str: String) {
    
    if str.characters.count > 0 {
        print("! \(str.characters.first!)")
    }
    
    let stringWithoutPrintedChar = str[str.characters.index(after: str.characters.startIndex)..<str.endIndex]
    
    if stringWithoutPrintedChar.characters.count > 0 {
        printStringWithRecursion(str: stringWithoutPrintedChar)
    }
    
}


printStringWithRecursion(str: str)

///////////////////   print with loop   ///////////////////////////


func printString(str: String) {

    for i in 0..<str.characters.count {
        print("\(str[str.index(str.startIndex, offsetBy: i)])")
    }
}

//printString(str: str)

///////////////////////////////////////////////////////////////////




