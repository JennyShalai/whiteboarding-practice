// print string with loop and recursion


///////////////////        print with loop      //////////////////////
///////////////////   if can not modify input   //////////////////////
func printString(str: String) {
    
    for i in 0..<str.characters.count {
        print("\(str[str.index(str.startIndex, offsetBy: i)])")
    }
}


///////////////////     print with loop      //////////////////////
///////////////////   if can modify input    //////////////////////
func printStr(str: String) {
    
    var string = str
    
    for _ in 0..<str.characters.count {
        print(string.characters.popFirst()!)
    }
}


///////////////////     print with recursion    //////////////////////
///////////////////   if can not modify input   //////////////////////
func printStringWithRecursion(str: String) {
    
    if str.characters.count > 0 {
        print(str.characters.first!)
    } else {
        return
    }
    
    // substring, range of chars from 2d to last
    let stringWithoutPrintedChar = str[str.characters.index(after: str.characters.startIndex)..<str.characters.endIndex]
    
    printStringWithRecursion(str: stringWithoutPrintedChar)
}


///////////////////   print with recursion   //////////////////////
///////////////////   if can modify input    //////////////////////
func printStrWithRecursion(str: String) {
    
    var string = str
    
    if str.characters.count > 0 {
        print(string.characters.popFirst()!)
        printStrWithRecursion(str: string)
    } else {
        return
    }
}









