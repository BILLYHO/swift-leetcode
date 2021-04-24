//
//  027.Remove Element.swift
//  Swift-LeetCode
//
//  Created by billy on 2021/4/24.
//

import Foundation

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var lastIndex = nums.count - 1;
    var hasElement = false;
    for (index, num) in nums.enumerated() {
        while nums[lastIndex] == val {
            lastIndex -= 1;
            hasElement = true;
            if lastIndex < 0 {
                return 0;
            }
        }
        if index >= lastIndex  {
            break;
        }
        if num == val {
            hasElement = true;
            nums[index] = nums[lastIndex];
            nums[lastIndex] = val;
        }
    }
    return hasElement ? lastIndex+1 : nums.count;
}
