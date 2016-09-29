//: [Previous](@previous)

import UIKit

let x : UInt16 = 100;
let y : UInt8 = 20;

// x + y; // 需要强制转换
let m = x + UInt16(y);
let n = UInt8(8) + y;

let w : Float = 3;
// let v : Int = 3.0 // 出错，swift 是强类型语言

// 和 OC 不同的地方，swift没有自动类型转换，即使 CGFloat 和 Float
let red : Float = 0.2;
let green : Float = 0.3;
let blue : Float = 0.5;


// UIColor(red: red, green: green, blue: blue); // 出错

//: [Next](@next)
