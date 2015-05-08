//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let tutorialTeam = 60
let editorialTeam = 17
var totalTeam = tutorialTeam + editorialTeam
totalTeam += 1
let priceInferred = 19.99
let priceExplicit: Double = 19.99
let onSaleInferred = true
let onSaleExplicit: Bool = false
let nameInferred = "Whoopie Cushion"
let nameExplicit: String = "Whoopie Cushion"
if onSaleInferred {
    println("\(nameInferred) on sale for \(priceInferred)!")
} else {
    println("\(nameInferred) at regular price: \(priceInferred)!")
}

class TipCalculator {
    let total: Double
    let taxPct: Double
    let subtotal: Double
    
    init(total: Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
    }
    
    func calcTipWithTipPct(tipPct: Double) -> Double {
        return subtotal * tipPct
    }
    
    func printPossibleTips() {
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        for possibleTip in possibleTipsInferred {
            println("\(possibleTip*100)%: \(calcTipWithTipPct(possibleTip))")
        }
        for i in 0..<possibleTipsInferred.count {
            let possibleTip = possibleTipsInferred[i]
            println("\(possibleTip*100)%: \(calcTipWithTipPct(possibleTip))")
        }
    }
    
    func returnPossibleTips() -> [Int: Double] {
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        var retval = [Int: Double]()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip*100)
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
    }
}

let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
tipCalc.printPossibleTips()
tipCalc.returnPossibleTips()


