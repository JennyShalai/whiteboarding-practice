// Given a Singly Linked List which has data members sorted in ascending order
// Construct a Balanced Binary Search Tree which has same data members as the given Linked List


class listNode {
    var value: Int
    var next: listNode?
    init(value: Int) {
        self.value = value
    }
}

class treeNode {
    var value: Int
    var left: treeNode?
    var right: treeNode?
    init(value: Int) {
        self.value = value
    }
}
