//: Playground - noun: a place where people can play

import UIKit



func revers(string: String) -> String {
    
    // convert string into array of characters
    var array = Array(string.characters)
    
    // init values
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    // swope chars
    while leftIndex < rightIndex {
        let left = array[leftIndex]
        let right = array[rightIndex]
        array.remove(at: leftIndex)
        array.insert(right, at: leftIndex)
        array.remove(at: rightIndex)
        array.insert(left, at: rightIndex)
        leftIndex += 1
        rightIndex -= 1
    }
    
    let result = String(array)
    return result
}



var str = "0987654321"
let answer = revers(string: str)
