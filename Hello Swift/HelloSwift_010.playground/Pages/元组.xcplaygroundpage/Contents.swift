
//: [Previous](@previous)

import Foundation

var point = (5, 2);
var httpResponse = (404, "Not Found");

var point2 : (Int, Int, Int) = (5, 2, 2);

// 解包
let (x, y) = point;
x;
y;

var (statusCode, statusMessage) = httpResponse;
statusCode;
statusMessage;

statusCode = 405;

point.0
point.1

let point3 = (x : 3, y : 2);
point3.x;

let point4: (x: Int, y: Int) = (10, 5);
point4.x;
point4.y;

let loginResult = (true, "zhoulingyu")
let (isLoinSuccess, _) = loginResult;
if isLoinSuccess {
    print("success");
} else {
    print("faild");
}

//: [Next](@next)
