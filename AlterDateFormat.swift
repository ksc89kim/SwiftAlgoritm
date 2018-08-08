import Foundation

func solution(_ time:String, _ N:Int) -> String {
    let array = time.split(separator:" ")
    let meridiem = array[0]
    let time = array[1].split(separator:":")
    let second = timeToSecond(Int(time[0]),Int(time[1]),Int(time[2]))
    switch meridiem {
        case "PM":
        return secondToTime(second+N+(3600*12))
        default:
        return secondToTime(second+N)
    }
    
}

func timeToSecond(_ hour:Int?, _ minute:Int?, _ second:Int?) -> Int {
    guard let h = hour else {
        return 0
    }
    guard let m = minute else {
        return 0
    }
    guard let s = second else {
        return 0
    }
    return  (h*60*60) + (m*60) + s
}

func secondToTime(_ second:Int) -> String {
   let h = (second / 3600) % 24
   let m =  (second % 3600) / 60
   let s =  (second % 3600) % 60   
   return String(format: "%02d:%02d:%02d", arguments: [h,m,s]) 
}

print("\(solution("PM 01:00:00",10))")
print("\(solution("PM 11:59:59",1))")
print("\(solution("AM 12:10:00",40))")
print("\(solution("AM 05:24:03",102392))")