//
//  ListNode.swift
//  Swift-LeetCode
//
//  Created by billy on 2021/7/11.
//

import Foundation
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func buildListNode(_ nums:[Int]) -> ListNode {
    let root = ListNode.init()
    var current:ListNode?
    for number in nums {
        if current == nil {
            current = root
        } else {
            current?.next = ListNode.init()
            current = current?.next!
        }
        current?.val = number
    }
    return root
}

func printListNode(_ node:ListNode?) {
    print("ListNode: ", terminator: "")
    var current = node
    while current != nil {
        print("->\(current!.val)", terminator: "")
        current = current?.next
    }
    print("")
}
