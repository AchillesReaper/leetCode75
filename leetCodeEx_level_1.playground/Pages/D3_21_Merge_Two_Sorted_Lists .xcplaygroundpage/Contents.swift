//: [Previous](@previous)

import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}



class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        if list1 == nil && list2 == nil {return nil}
        
        var l1 = list1
        var l2 = list2
        
        let dummy: ListNode? = ListNode(-1)
        var current = dummy
        
        while l1 != nil && l2 != nil {
            let l1val = l1!.val
            let l2val = l2!.val
            
            if l1val < l2val{
                current?.next = l1
                l1 = l1?.next
            }else{
                current?.next = l2
                l2 = l2?.next
            }
            current  = current?.next
        }
        
        if l1 != nil {
            current?.next = l1
        }
        if l2 != nil {
            current?.next = l2
        }
        
        return dummy?.next
    }
}


//let l1 = [1,2,4]
//let l2 = [1,3,4]
//
//let x = Solution()
//x.mergeTwoLists(l1,l2)
