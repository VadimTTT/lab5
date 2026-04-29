// Author: Тюшко Вадим, 12 группа
// Task 7, Variant 22
// Model: splits optional array into even and odd values.

import Foundation

final class ArraySplitter {
    private let numbers: [Int]?

    init(numbers: [Int]?) {
        self.numbers = numbers
    }

    func split() -> (even: [Int], odd: [Int]) {
        guard let numbers else { return ([], []) }
        let even = numbers.filter { $0 % 2 == 0 }
        let odd = numbers.filter { $0 % 2 != 0 }
        return (even, odd)
    }
}
