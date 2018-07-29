public func solution(_ X : Int, _ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    
    var count = 0
    var result = -1
    var checkArray:[Int:Bool] = [:]
    for  i in 0 ..< A.count {
        if A[i] <= X && checkArray[A[i]] == nil {
            checkArray[A[i]] = true
            count += 1
        }

        if count == X {
            result = i
            break
        }
    }

    return result
}

var a = [1,3,1,3,2,1,3]
print("\(solution(3,&a))")