//: [Previous](@previous)

import Foundation
import CoreFoundation

class Solution {
    func longestPalindrome(_ s: String) -> Int {
        if s.count == 1 {return 1}
        var ans = 0
        var oddCount = false
        var countDict = [Character:Int]()
        for char in s{
            if countDict[char] == nil {
                countDict[char] = 1
            }else{
                countDict[char]! += 1
            }
        }
        for item in countDict{
            ans += Int(item.value/2)*2
            if item.value%2 == 1{
                oddCount = true
            }
        }
        if s.count%2 != 0 || oddCount{
            ans += 1
        }
    return ans
    }
}

let s = "aAaAaAaAa"
let x = Solution()
x.longestPalindrome(s)


