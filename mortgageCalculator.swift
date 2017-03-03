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

let calc = (i: 4.125, b: 93000, n: 360)

// To calculate the numerator
var one = 1
var first = Double(one) + calc.i
first = pow(first,Double(calc.n))
first = first * calc.i

//To calculate the denominator
var second = Double(one) + calc.i
second = pow(second,Double(calc.n))
second = second - Double(one)

var result = first / second
result = Double(calc.b) * result
result = round(100 * result) / 100
let money = result as NSNumber
let formatter = NumberFormatter()
formatter.numberStyle = .currency
var resultString = formatter.string(from: money)

print("The monthly mortgage is", resultString ?? Double.self)

