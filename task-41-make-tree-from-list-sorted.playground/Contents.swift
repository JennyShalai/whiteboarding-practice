// Given a Singly Linked List which has data members sorted in ascending order
// Construct a Balanced Binary Search Tree which has same data members as the given Linked List


class ListNode {
    var value: Int
    var next: ListNode?
    init(value: Int) {
        self.value = value
    }
    
}

class List {
    var head: ListNode
    
    init(head: ListNode) {
        self.head = head
    }
    
    func printNodes() -> String {
        
        var result = "List: "
        var node: ListNode? = self.head
        
        while true {
            if node == nil {
                result += "nil"
                return result
            } else {
                result += "\(String(node!.value)) "
                node = node!.next
            }
        }
    }
}

class TreeNode {
    var value: Int
    var left: TreeNode?
    var right: TreeNode?
    var parent: TreeNode?
    init(value: Int) {
        self.value = value
    }
    
    func addNode(node: TreeNode?) {
        
        var value = 0
        if node != nil {
            value = node!.value
        } else {
            return
        }
        
        var h = self
        
        while true {
            if value <= h.value && h.left == nil {
                h.left = node
                node!.parent = h
                break
            }
            
            if value > h.value && h.right == nil {
                h.right = node
                node!.parent = h
                break
            }
            
            if value <= h.value && h.left != nil {
                h = h.left!
            }
            
            if value > h.value && h.right != nil {
                h = h.right!
            }
        }
    }
    
    func printTree(head: TreeNode) {
        
        if head.left != nil {
            printTree(head: head.left!)
        }
        
        print("\(head.value)")
        
        if head.right != nil {
            printTree(head: head.right!)
        }
    }
    
}




let headList = ListNode.init(value: 0)
let oneListNode = ListNode.init(value: 1)
let twoListNode = ListNode.init(value: 2)
let threeListNode = ListNode.init(value: 3)
let fourListNode = ListNode.init(value: 4)
headList.next = oneListNode
oneListNode.next = twoListNode
twoListNode.next = threeListNode
threeListNode.next = fourListNode

let list = List.init(head: headList)

print(list.printNodes())    // List: 0 1 2 3 4 nil




func buildTreeFromList(head: ListNode?) -> TreeNode? {
    
    if head == nil {
        return nil
    }
    
    
    var node = head
    var slowPointer = head
    var fastPointer = head
    
    while node != nil && slowPointer!.next != nil && fastPointer!.next!.next != nil {
        slowPointer = node!.next
        fastPointer = fastPointer!.next!.next
        node = node!.next
    }
    
    var tree = TreeNode.init(value: slowPointer!.value)
    var left = TreeNode.init(value: head!.value)
    tree.addNode(node: left)
    var right = TreeNode.init(value: slowPointer!.next?.value)
    tree.addNode(node: right)
    
    return tree

}
