// Author: Тюшко Вадим, 12 группа
// Controller: coordinates model and view.

import Foundation

final class ArrayController {
    private let view = ConsoleView()

    func run(numbers: [Int]?) {
        let splitter = ArraySplitter(numbers: numbers)
        let result = splitter.split()
        view.printResult(even: result.even, odd: result.odd)
    }
}
