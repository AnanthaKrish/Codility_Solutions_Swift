public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    
    if A.count < 2 {
        return A[0]
    }
    var result = 0
    
    for elm in A {
        
        result = result ^ elm
    }
    return result
}
