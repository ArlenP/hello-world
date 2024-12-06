import Foundation
//func hello(_ name: String = "World") -> String {
//    let trimmedName = (name ?? "").trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
//    let isValidName = trimmedName.range(of: "^[A-Za-z]+$", options: .regularExpression) != nil
//    let finalName = (isValidName && !trimmedName.isEmpty) ? trimmedName : "World"
//    return "Hello, \(finalName)!"
//}

func hello(_ name: String = "World") -> String {
    let validatedName = validateName(name)
    return "Hello, \(validatedName)!"
}
private func validateName(_ name: String) -> String {
    let trimmedName = trimName(name)
    return isValidName(trimmedName) ? trimmedName : "World"
}
func trimName(_ name: String) -> String {
    name.trimmingCharacters(in: .whitespacesAndNewlines)
}
func isValidName(_ name: String) -> Bool {
    guard !name.isEmpty else { return false }
    return name.range(of: "^[A-Za-z]+$", options: .regularExpression) != nil
}
