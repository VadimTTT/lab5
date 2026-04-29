// Author: Тюшко Вадим, 12 группа
// Task 4, Variant 22
// Calculates entrant rating: diploma average * 10 + CT scores.

import Foundation

func calculateRating(diplomaGrades: [Double], ctScores: [Int]) -> Double {
    let avg = diplomaGrades.reduce(0, +) / Double(diplomaGrades.count)
    let ctSum = ctScores.reduce(0, +)
    return avg * 10.0 + Double(ctSum)
}

let diplomaGrades = [9.0, 8.0, 9.0, 10.0, 8.0]
let ctScores = [88, 91, 93]
let passScore = 364.0

let rating = calculateRating(diplomaGrades: diplomaGrades, ctScores: ctScores)
print("Rating: \(rating)")
print(rating >= passScore ? "Принят в университет" : "Не принят в университет")
