// Author: Тюшко Вадим, 12 группа
// Task 6, Variant 22
// Dictionary operations: Software(name, year) and Software(name, license).

import Foundation

var softwareYear: [String: Int] = [:]
var softwareLicense: [String: String] = [
    "Xcode": "Proprietary",
    "Swift": "Apache 2.0",
    "VSCode": "MIT"
]

softwareYear["Xcode"] = 2003
softwareYear["Swift"] = 2014
softwareYear["VSCode"] = 2015

print("Count year dictionary: \(softwareYear.count)")

if let year = softwareYear["Swift"], let license = softwareLicense["Swift"] {
    print("Swift -> year: \(year), license: \(license)")
}

print("All softwareYear:")
for item in softwareYear.sorted(by: { $0.key < $1.key }) {
    print("\(item.key): \(item.value)")
}

softwareYear["CLion"] = 2015
softwareLicense["CLion"] = "Proprietary"
softwareLicense["Xcode"] = "Apple EULA"

let sortedByValue = softwareYear.sorted(by: { $0.value < $1.value })
print("Sorted by year:")
for item in sortedByValue { print("\(item.key): \(item.value)") }

softwareYear.removeValue(forKey: "VSCode")
softwareLicense.removeAll()

print("After deletion -> years: \(softwareYear.count), licenses: \(softwareLicense.count)")
