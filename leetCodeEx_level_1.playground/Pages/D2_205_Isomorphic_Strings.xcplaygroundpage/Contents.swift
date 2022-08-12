//: [Previous](@previous)

import Foundation

class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        //step 1: check if the length of the inout strings are the same.
        if s.count != t.count{
            return false
        }
        
        let sCharacters = Array(s)
        let tCharacters = Array(t)
        
        //step 2: create a dictionary with unique key from s, value from t. repeeat key will be skipped in the mapping process.
        //step 3: compare value of the charater in the dictionary and the charater in t
        var dict1 = [Character:Character]()
        for i in 0...(sCharacters.count-1) {
            let x = sCharacters[i]
            dict1[x] = tCharacters[i]
        }
        for item in dict1{
            print(item)
        }
        for i in 0...(sCharacters.count-1){
            let x = sCharacters[i]
            if dict1[x] != tCharacters[i]{
                return false
            }
        }
        
        // repeat step 2 & 3, check s from t
        var dict2 = [Character:Character]()
        for i in 0...(sCharacters.count-1) {
            let x = tCharacters[i]
            dict2[x] = sCharacters[i]
        }
        for item in dict2{
            print(item)
        }
        for i in 0...(sCharacters.count-1){
            let x = tCharacters[i]
            if dict2[x] != sCharacters[i]{
                return false
            }
        }
        
        
        return true
    }
}

let s = "badc"
let t = "baba"

let x = Solution()
x.isIsomorphic(s, t)
 
