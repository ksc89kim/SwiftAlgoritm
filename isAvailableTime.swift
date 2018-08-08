import Foundation

func solution(_ timePettern:String) -> Bool {
    let weekdays:[Substring] =  timePettern.split(separator:",")
    let comps:DateComponents = Calendar(identifier:.gregorian).dateComponents([.weekday,.hour, .minute], from:Date())
    var isWeekDay:Bool = false, isTime:Bool = false, isInit:Bool = false
    for weakday in weekdays {
       var weekdayWithTime = weakday.split(separator:" ")
       if weekdayWithTime.count > 1 {
            if isInit {
                isTime =  false
                isWeekDay = false
            } 
            let times = weekdayWithTime[1].split(separator:"~")
            isTime = checkTime(times, comps) || isTime
            isWeekDay = checkWeekDay(weekdayWithTime,comps) || isWeekDay
            isInit = true
       } else {
            isInit = false
            if weekdayWithTime[0].count > 1 {
                let times = weekdayWithTime[0].split(separator:"~")
                isTime = checkTime(times, comps) || isTime
            } else {
                isWeekDay = checkWeekDay(weekdayWithTime,comps) || isWeekDay
            }
       } 
    } 
    return isWeekDay && isTime 
}

func checkTime(_ compareTime:[Substring], _ dateComponents:DateComponents) -> Bool {
    let currentSecond = timeToSecond(dateComponents.hour, dateComponents.minute)
    let startTime = compareTime[0].split(separator:":")
    let startSecond = timeToSecond(Int(startTime[0]), Int(startTime[1]))
    let endTime =  compareTime[1].split(separator:":")
    let endSecond =  timeToSecond(Int(endTime[0]), Int(endTime[1]))
    return startSecond <= currentSecond && endSecond > currentSecond
}

func checkWeekDay(_ compareWeekDay:[Substring], _ dateComponents:DateComponents) -> Bool {
    guard let currentWeekDay = dateComponents.weekday else {
        return false
    }
    return Int(compareWeekDay[0]) == currentWeekDay
}

func timeToSecond(_ hour:Int?, _ minute:Int?) -> Int {
    guard let h = hour else {
        return 0
    }
    guard let m = minute else {
        return 0
    }
    return  (h*60*60) + (m*60)
}

// 일요일 1, 월요일 2, 화요일 3, 수요일 4, 목요일 5, 금요일 6, 토요일 7 ..
print("solution1 = \(solution("1,3 09:00~19:25"))")
print("solution2 = \(solution("2 09:00~23:00,09:00~13:00"))")
print("solution3 = \(solution("1 09:00~18:00,2 09:00~19:00"))")

