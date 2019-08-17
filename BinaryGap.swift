import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ N : Int) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    
    if N < 5 {
        return 0
    }
    var n = N
    var res = 0
    var last = -1
    var i = 0
    while (n > 0) {
        let bin = n % 2
        if bin == 1 {
            
            if last >= 0 && i - last - 1 > res {
                res = i - last - 1
            }
            last = i
            
        }
        n = n/2
        i += 1
    }

    return res
}