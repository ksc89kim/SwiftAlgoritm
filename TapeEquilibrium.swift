func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)

    var sumArray:[Int] = []
    var sum = 0
    for i in 0 ..< A.count {
        sum += A[i]
        sumArray.append(sum)
    }

    var minSum = Int.max
    for i in 0 ..< (A.count - 1) {
        let diffrence = abs(sumArray[i] - (sum - sumArray[i]))
        if minSum > diffrence {
            minSum = diffrence
        }
    }
    return minSum
}

var a = [-1000,1000]
print("\(solution(&a))")