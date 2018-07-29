func rightArray(array:inout [Int]) {
    var beforeTemp:Int = 0
    for i in 0 ..< array.count {
        if i == 0 {
            beforeTemp = array[i]
            array[0] = array.last!
        } else {
           let temp = array[i]
           array[i] = beforeTemp
           beforeTemp = temp
        }
    }
}


func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    for _ in 0 ..< K {
        rightArray(array:&A)
    }
    return A
}

var array:[Int] = [1,2,3,4,5]
let result = solution(&array,4)