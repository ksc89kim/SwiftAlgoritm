
func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    var array:[Int:Bool] = [:] 

    for i in 0 ..< A.count {
        if A[i] > 0 {
            array[A[i]] = true
        }
    }

    var result = 1
    for i in 1 ... A.count {
        if let isInteger =  array[i], isInteger {
            result = i + 1
        }  else {
            result = i
            break
        }
    }
    return result
}


var array = [1,2,3]
var result = solution(&array)
print("result = \(result)")