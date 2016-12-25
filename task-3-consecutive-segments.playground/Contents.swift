//: Playground - noun: a place where people can play

import UIKit

let input = [1, 2, 10, 15, 16, 17, 20, 21, 22, 24]

func consecuative(array: [Int]) -> String {
    var begin: Int = 0
    var end: Int = 0
    var next: Int = 0
    var out: String = ""
    
    for ind in 0..<array.count {
        // for all elements but last one
        if ind + 1 < array.count {
            next = ind + 1
            // if consecuative
            if array[next] - array[end] == 1 {
                end = next
            // if not consecuative
            } else {
                if begin == end {
                    out += "\(array[begin]), "
                } else {
                    out += "\(array[begin])-\(array[end]), "
                }
                begin = next
                end = next
            }
        // case for the last element in array
        } else {
            if begin == end {
                out += "\(array[begin])"
            } else {
                out += "\(array[begin])-\(array[end])"
            }
        }
    }
    return out
}

print(consecuative(array: input))
// 1-2, 10, 15-17, 20-22, 24
