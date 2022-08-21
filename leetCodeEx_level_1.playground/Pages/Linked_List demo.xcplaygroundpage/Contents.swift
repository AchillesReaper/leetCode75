import Cocoa
//import Darwin



public class LinkedNode{
    public var value: Int
    public var next: LinkedNode?
    public init(_ value: Int, _ next: LinkedNode?){
        self.value = value
        self.next = next
    }
    
}

public class LinkedList{
    var head: LinkedNode?
    
//    #3. Insert LinkedNode
    func inserSpecial(_ value: Int){
        var perv = head
        var current = perv?.next
        
        while current != nil{
            if (perv!.value < value) && (current!.value > value){
                perv?.next = LinkedNode(value, current)
                return
            }
            perv = current
            current = perv?.next
        }
        insert(value)
    }
        
    
//    #2. delete LinkedNode
    func delete(_ value: Int){
        if head?.value == value {
            head = head?.next
            return
        }
        var prev: LinkedNode?
        var current = head
        while current?.value != value && current?.next != nil{
            prev = current
            current = current?.next
        }
        if (current?.value == value){
            prev?.next = current?.next
        }else{
            print("input node is not found")
        }
    }
    
    
//    #1. Append Node
    func insert(_ value: Int){
        if head == nil {
            head = LinkedNode(value, nil)
            return
        }
        
        var current = head
        while current?.next != nil {
            current = current?.next
        }
        current?.next = LinkedNode(value, nil)
    }

    func displayNode(){
        var current = head
        while current != nil {
            print(current?.value ?? "")
            current = current?.next
        }
    }
}




let x = LinkedList()
x.insert(1)
x.insert(2)
//x.insert(3)
x.insert(4)
x.insert(5)
x.inserSpecial(3)
x.displayNode()
print(x)
