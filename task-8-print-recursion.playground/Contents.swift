

var str = "Hello, playground!"



///////////////////   print with recursion   //////////////////////

func printString(str: String, position: Int) {

    print("\(str[str.index(str.startIndex, offsetBy: position)])")
    
    if position + 1 < str.characters.count {
        printString(str: str, position: position + 1)
    }
}


///////////////////   print with loop   ///////////////////////////


func printStr(str: String) {

    for i in 0..<str.characters.count {
        print("\(str[str.index(str.startIndex, offsetBy: i)])")
    }
}



printString(str: str, position: 0)
print("---")
printStr(str: str)