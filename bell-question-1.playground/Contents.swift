import UIKit

func days(from s: String, after k: Int) -> String? {
    let days = ["Mon","Tue","Wed","Thu","Fri","Sat","Sun"]
    let startIndex = days.firstIndex { $0.lowercased() == s.lowercased() } ?? 0
    
    var daysToCount = k % 7
    var pointer = startIndex
    
    while daysToCount > 0 {
        daysToCount -= 1
        pointer += 1
        
        if pointer > days.count - 1 {
            pointer = 0
        }
    }
 
    guard days.indices.contains(pointer) else { return nil }
    return days[pointer]
}

// test1: S = "wed" and K = 2, the function should return "Fri".
let day1 = days(from: "wed", after: 2)

// test2: S = "Sat" and K = 23, the function should return "Mon"
let day2 = days(from: "Sat", after: 23)
