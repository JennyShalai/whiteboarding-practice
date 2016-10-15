// sorted stack, need to insert value

class SortedStack {
    
    var stack: [Int] = []
    
    func pop() {
        if self.stack.count > 0 {
            self.stack.removeLast()
        }
    }
    
    func push(value: Int) {
        
        var subStack: [Int] = []
        while self.stack.count > 0 {
            let currentValue = self.stack.last!
            if currentValue < value {
                subStack.append(currentValue)
                self.stack.removeLast()
            } else {
                break
            }
        }

        self.stack.append(value)
        
        while subStack.count > 0 {
            self.stack.append(subStack.removeLast())
        }
    }
    
    func printStack() {
        print(self.stack)
    }
}


var stack = SortedStack()
stack.push(value: 3)
stack.push(value: 4)
stack.push(value: 6)
stack.push(value: 7)
stack.printStack()      // [7, 6, 4, 3]
stack.push(value: 5)
stack.printStack()      // [7, 6, 5, 4, 3]
