//: [Previous](@previous)

import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if let buyPrice = prices.min(){
            var profit = 0
            for i in prices.firstIndex(of: buyPrice)!...(prices.count-1){
                let profitDummy = prices[i]-buyPrice
                if profitDummy > profit{
                    profit = profitDummy
                }
            }
            return profit
            
        }else{
            return 0
        }
    }
}

let prices = [2,4,1]

let x = Solution()
x.maxProfit(prices)
