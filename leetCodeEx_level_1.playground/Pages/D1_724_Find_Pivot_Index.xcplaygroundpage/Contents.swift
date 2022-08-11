//: [Previous](@previous)

import Foundation

class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        var pivotIndex = -1
        for i in 0...(nums.count-1){
            var leftSum = 0
            var rightSum = 0
            if i > 0 {
                for j in 0...(i-1){
                    leftSum += nums[j]
                }
            }
            if i < nums.count-1{
                for k in (i+1)...(nums.count-1){
                    rightSum += nums[k]
                }
            }
            if leftSum == rightSum {
                pivotIndex = i
                break
            }
        }
        return pivotIndex
    }
}

//Solution2 is faster than the first solution
class Solution2 {
    func pivotIndex(_ nums: [Int]) -> Int {
        var pivotIndex = -1
        var totalSum = 0
        var leftSum = 0
        for item in nums{
            totalSum += item
        }
        for i in 0...(nums.count-1){
            if (leftSum == totalSum - leftSum - nums[i]){
                pivotIndex = i
                break
            }
            leftSum += nums[i]
        }
        return pivotIndex
    }
}

let num = [-1,-1,0,1,0,-1]
let x = Solution2()
x.pivotIndex(num)

