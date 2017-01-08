// Given a Singly Linked List which has data members sorted in ascending order
// Construct a Balanced Binary Search Tree which has same data members as the given Linked List


class ListNode {
    var value: Int
    var next: ListNode?
    init(value: Int) {
        self.value = value
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
}

class Tree {
    var head: TreeNode
    
    init(head: TreeNode) {
        self.head = head
    }
    
    func addNode(node: TreeNode?) {
        
        var value = 0
        if node != nil {
            value = node!.value
        } else {
            return
        }
        
        var h = self.head
        
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
