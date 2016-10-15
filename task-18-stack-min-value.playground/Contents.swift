// given N Int element, return min value anytime with O(1)

class StackWichMin {
    var min: Int = Int.max
    var stack: [Int] = []
    var minValues: [Int] = []
    
    func push(element: Int) {
        
        if element < self.min {
            self.min = element
            self.minValues.append(self.min)
        }
        
        self.stack.append(element)
    }
    
    func getMin() -> Int {
        return self.min
    }
    
    func pop() {
        
        if self.stack.count > 0 {
            
            if self.stack.last! ==  self.minValues.last! {
                self.minValues.removeLast()
                self.min = minValues.count > 0 ? minValues.last! : Int.max
            }
            
            self.stack.removeLast()
        }
    }
    
    func printStack() {
        print(self.stack)
    }
    
    func printMinValues() {
        print(self.minValues)
    }
}


var stack = StackWichMin()
stack.push(element: 5)
stack.push(element: 3)
stack.push(element: 7)
stack.printStack()          // [5, 3, 7]
stack.printMinValues()      // [5, 3]
print(stack.getMin())       // 3
stack.push(element: 2)
stack.printStack()          // [5, 3, 7, 2]
stack.printMinValues()      // [5, 3, 2]
print(stack.getMin())       // 2
stack.pop()
stack.printStack()          // [5, 3, 7]
stack.printMinValues()      // [5, 3]
print(stack.getMin())       // 3
stack.pop()
stack.printStack()          // [5, 3]
stack.printMinValues()      // [5, 3]
print(stack.getMin())       // 3
stack.pop()
stack.printStack()          // [5]
stack.printMinValues()      // [5]
print(stack.getMin())       // 5
stack.pop()
stack.printStack()          // []
stack.printMinValues()      // []
print(stack.getMin())       // 9223372036854775807




