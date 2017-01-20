// "3[a2[bd]g4[ef]h]" => "abdbdgefefefefhabdbdgefefefefhabdbdgefefefefh"


import Foundation

class Stack {

    var stack: [String] = []
    var counter = 0
    let numbersSet = CharacterSet.decimalDigits
    let lettersSet = CharacterSet.letters
    
    func push(val: String) {
        if val != "]" {
            self.stack.append(val)
            if val == "[" {
                self.counter += 1
            }
        } else {
            if self.counter < 1 {
                print("invalid input: brackets are not balanced")
            } else {
                self.decode()
            }
            
        }
    }
    
    func pop() -> String {
        if self.stack.count > 0 {
            if self.stack.last! == "[" {
                self.counter -= 1
            }
            return self.stack.popLast()!
        } else {
            return ""
        }
    }
    
    func peek() -> String {
        if self.stack.count > 0 {
            return self.stack.last!
        } else {
            return ""
        }
    }
    
    func decode() {
        var letters = ""
        var numbers = ""
        var result = ""
        
        while true {
            let char = self.peek()
            if char == "" {
                break
            }
            if lettersSet.contains(char.unicodeScalars.first!) {
                letters = "\(self.pop())\(letters)"
            } else if char == "[" {
                self.pop()
                break
            } else {
                print("OMG!")
                break
            }
        }
        
        while true {
            let char = self.peek()
            if char == "" {
                break
            }
            if numbersSet.contains(char.unicodeScalars.first!) {
                numbers = "\(self.pop())\(numbers)"
            } else {
                break
            }
        }
    
        // how many time need to repeat letters
        if let i = Int(numbers) {
            for _ in 0..<i {
                result += letters
            }
        }
        
        for char in result.characters {
            self.push(val: String(char))
        }
        
    }
    
}

//3[a2[bd]g4[ef]h]
let st = Stack()
st.push(val: "3")
st.push(val: "[")
st.push(val: "a")
st.push(val: "2")
st.push(val: "[")
st.push(val: "b")
st.push(val: "d")
st.push(val: "]")
st.push(val: "g")
st.push(val: "4")
st.push(val: "[")
st.push(val: "e")
st.push(val: "f")
st.push(val: "]")
st.push(val: "h")
st.push(val: "]")
print(st.stack.joined(separator:"")) // abdbdgefefefefhabdbdgefefefefhabdbdgefefefefh



