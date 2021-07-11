//
//  002.AddTwoNumbers.swift
//  Swift-LeetCode
//
//  Created by billy on 2021/7/11.
//

import Foundation

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    let root = ListNode.init()
    var current:ListNode?
    var left = l1
    var right = l2
    
    var hasIncrement = false
    repeat {
        if current == nil {
            current = root
        } else {
            current?.next = ListNode.init()
            current = current?.next!
        }
        let val1 = left?.val ?? 0
        let val2 = right?.val ?? 0
        let sum = val1 + val2 + (hasIncrement ? 1 : 0)
        hasIncrement = sum >= 10
        current?.val = sum % 10
        left = left?.next
        right = right?.next
    } while left != nil || right != nil || hasIncrement
    return root
}

func testAddTwoNumbers(_ n1:[Int], _ n2:[Int]) {
    let l1 = buildListNode(n1)
    let l2 = buildListNode(n2)

    let result = addTwoNumbers(l1, l2)
    printListNode(result)
}

func runTestAddTwoNumbers() {
    testAddTwoNumbers([2,4,3], [5,6,4])
    testAddTwoNumbers([0], [0])
    testAddTwoNumbers([9,9,9,9,9,9,9], [9,9,9,9])
}
