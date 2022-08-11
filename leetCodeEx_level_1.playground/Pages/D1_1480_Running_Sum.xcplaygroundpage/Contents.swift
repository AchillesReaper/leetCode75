//: [Previous](@previous)

import Foundation

class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var runningSum = [Int]();
        for i in 0...(nums.count-1){
            print(i)
            var rSum = 0;
            for j in 0...i{
                rSum += nums[j];
            }
            runningSum.append(rSum);
        }
        return runningSum;
    }
}

let nums = [1,2,3,4]
let x = Solution()
x.runningSum(nums)
