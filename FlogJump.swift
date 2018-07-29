
func solution(_ X:Int, _ Y:Int,_ D:Int) -> Int {
    guard Y >= X else {
        return 0
    }

    guard X > 0 && X < 1000000001 else {
        return 0
    }

    guard Y > 0 && Y < 1000000001 else {
        return 0
    }

    guard D > 0 && D < 1000000001 else {
        return 0
    }


    let totalDistance = Double(Y - X)
    let result = totalDistance/Double(D)
    var sum = ((Int(result)) * D) + X
    if sum == Y {
        return Int(result)
    } else {
        return Int(result)+1
    }
}

var result = solution(1,5,2)
print("\(result)")