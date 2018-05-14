//: Playground - noun: a place where people can play

import UIKit

typealias Date = (Year:Int, Month:Int, Day:Int)
let namuwiki = Date(2015, 4, 17)
let namulive = Date(2016, 9, 5)

func datedif(a:Date, b:Date) -> Date {
    let result:Date = Date(b.Year-a.Year, b.Month-a.Month, b.Day-a.Day)
    return result
}
let dif = datedif(a: namuwiki, b: namulive)
print(dif)