/* Name: Jessica Aguilar
 * Date: 27 JAN 2017
 * Class: COP3665
 * Project: Assignment02
 * Purpose: Calcaulate a monthly mortgage payment and the Future Value for extra credit
 */

// monthly mortgage payment = P [[i(1+i)^n] / [(1+i)^n - 1]]
//var p = 93000 principle, amount borrowed
//var i = 4.125 interest rate
//var n = 360   number of payments over the life of the loan

import UIKit

//Extra Credit Future Value Calculator
// FV = P(1+r)^n
let fv = (p: 10000, r: 0.06, t: 3)
var one = 1

var res = Double(one) + fv.r
res = pow(res, Double(fv.t))
res = res * Double(fv.p)

let future = res as NSNumber
let formatter2 = NumberFormatter()
formatter2.numberStyle = .currency
var resString = formatter2.string(from: future)
print("The future value would be", resString ?? Double.self)

