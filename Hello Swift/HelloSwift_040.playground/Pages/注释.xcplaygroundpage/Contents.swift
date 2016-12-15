//: Playground - noun: a place where people can play

import UIKit

class Something {
    init(){
        
    }
}

/// hahah
///
/// hahah
/// 
/// - LIST 1
/// - LIST 2
/// - LIST 4
///
/// - Returns: a string
func showMultilineComments() -> String {
    let text = "You can use the /** ... */ for multiline comments"
    return text
}

/**
 # Title
 
 # subtitle
 
 1. LIST 1
 2. LIST 1
 3. LIST 1
 
 算法类关键字：
 - Parameter item1: 第一个参数
 - Parameter item2: 第二个参数
 - Returns: 返回值
 - Throws: 一个异常
 - Precondition: 前置条件
 - Postcondition: 循环不变量
 - Requires: 所需内容
 - Invariant: 循环不变量
 - Complexity: 复杂度
 - Important: 重要信息
 - Warning: 警告信息
 - Attention: 警告信息
 - Note: 记录
 - Remark: 评论
 
 版权类关键字：
 - Author: zhoulingyu
 - Authors: hah
 - Copyright: coderfish@163.com
 - Date: 6 Dec, 2016
 - Since: iOS 5
 - Version: 1.1.0
 
 */
func showMultilineComments2(item1: String, item2: Int) throws -> String {
    let text = "You can use the /** ... */ for multiline comments"
    return text
}
