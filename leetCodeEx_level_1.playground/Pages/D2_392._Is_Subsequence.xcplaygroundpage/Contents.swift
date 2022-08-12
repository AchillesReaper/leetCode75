//: [Previous](@previous)

import Foundation

class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        if s.count == 0{
            return true
        }
        if s.count > t.count {
            return false
        }

        let sCharacter = Array(s)
        let tCharacter = Array(t)
        var matchFound = 0
        var y = 0
        
        for i in 0...sCharacter.count-1{
            print("s[\(i)]:", sCharacter[i])
            if y < tCharacter.count{
                for j in y...tCharacter.count-1{
                    if sCharacter[i] == tCharacter[j]{
                        matchFound += 1
                        y = j + 1
//                        print("matched!")
                        break
                    }else if j == tCharacter.count-1{
//                        print("not found")
                        return false
                    }
                }
            }
            
        }
        if matchFound != sCharacter.count{
            return false
        }
        return true
    }
}

var s = "aaaaaa"
var t = "bbaaaa"
//let s = "acb"
//let t = "ahbgdc"
//s = "abc"
//t = "ahbgdc"

let x = Solution()
x.isSubsequence(s, t)


