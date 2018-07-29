func solution(_ A : inout [Int]) -> Int {

    guard A.count > 0 && A.count < 100001 else {
        return 0
    }

    var checkArray:[Int:Bool] = [:]
    for data in A {
        checkArray[data] = true
    }

    for i in 1 ..< (A.count + 1) {
        guard checkArray[i] != nil else  {
            return 0
        }
    }
    return 1
}

var a = [1,1]
print("\(solution(&a))")