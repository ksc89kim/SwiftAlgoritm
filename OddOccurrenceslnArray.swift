
let array:[Int] = [9,3,9,3,9,7,9]

func oddOcurrenceslnArray(_ array:[Int]) -> Int {
    var countArray:[Int:Int] = [:]
    var result = 0

    guard array.count > 0 && array.count <= 1000000 else {
        return result
    }

    for index in array {
        guard index > 0 && index <= 1000000000 else {
            return result
        }

        guard index % 2 != 0 else {
            return result
        }

        if let count = countArray[index] {
            countArray[index] = count + 1
        } else {
            countArray[index] = 1
        }
    }

    for (key, value) in countArray {
        if value == 1 {
            result = key
            break
        } else if value % 2 != 0 {
            result = key
            break
        }
    }
    return result
}

let result = oddOcurrenceslnArray(array)
print("result \(result)")