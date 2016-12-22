
import Foundation


// assert 一类只在 Debug 开发环境起作用

assert(1 > 0)

// 直接中断
//assertionFailure("中断")


// 如果在 Release 中需要中断

precondition(1 > 0)

// 直接中断
//preconditionFailure("中断")