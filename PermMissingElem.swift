
// score : 90
func solution(_ A: inout[Int]) -> Int {
    let maxCount = A.count+1

    guard A.count > 0 && A.count < 100001 else {
        return maxCount
    }

    var sortArray =  A.sorted { $0 < $1 }
    var result = 0
    for i in 0 ..< sortArray.count {
        if (i == sortArray.count - 1) && sortArray[i] < maxCount {
            result = maxCount
            break
        } else if (i == sortArray.count - 1) && sortArray[i] >= maxCount {
            result = maxCount - 1
            break
        }

        if result + 1 < sortArray[i] {
            result = result + 1
            break
        }
        result = sortArray[i]
    }
    return result
}

//score:100
func solution2(_ A: inout[Int]) -> Int {
    var boolArray:[Int:Bool] = [:]
    for i in  0 ..< A.count {
        let index = A[i]
        boolArray[index] = true
    } 

    for i in 1 ... (A.count+1) {
        guard boolArray[i] != nil else {
            return i
        }
    }
    return 0
}
var a = [2]
print("\(solution2(&a))")